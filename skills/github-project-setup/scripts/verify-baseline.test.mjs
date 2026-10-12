import assert from 'node:assert/strict';
import { execFileSync, spawnSync } from 'node:child_process';
import {
  mkdirSync,
  mkdtempSync,
  readFileSync,
  rmSync,
  writeFileSync
} from 'node:fs';
import { tmpdir } from 'node:os';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import test from 'node:test';

const scriptDirectory = dirname(fileURLToPath(import.meta.url));
const skillDirectory = dirname(scriptDirectory);
const verifierPath = join(scriptDirectory, 'verify-baseline.sh');

function withTempDir(run) {
  const root = mkdtempSync(join(tmpdir(), 'verify-baseline-'));

  try {
    return run(root);
  } finally {
    rmSync(root, { recursive: true, force: true });
  }
}

function runGit(root, args) {
  execFileSync('git', args, { cwd: root, stdio: 'ignore' });
}

function createGitRepository(root, initialBranch) {
  runGit(root, ['init', `--initial-branch=${initialBranch}`]);
  runGit(root, ['config', 'user.email', 'tests@example.com']);
  runGit(root, ['config', 'user.name', 'Test User']);
  writeFileSync(join(root, 'README.md'), '# Test repository\n');
  runGit(root, ['add', 'README.md']);
  runGit(root, ['commit', '-m', 'initial repository']);
}

function runVerifier(root) {
  return spawnSync('bash', [verifierPath, root, 'nonweb'], {
    encoding: 'utf8'
  });
}

function assertVerifierCheck(result, status, name) {
  assert.match(result.stdout, new RegExp(`${status}\\s+${name}`));
}

test('the app Lighthouse template uses a concrete, matching server port', () => {
  const template = JSON.parse(
    readFileSync(join(skillDirectory, 'assets/lighthouserc.app.json'), 'utf8')
  );
  const collect = template.ci.collect;

  assert.match(collect.startServerCommand, /--port 4173/);
  assert.deepEqual(collect.url, ['http://localhost:4173/']);
});

test('baseline verification detects workflow placeholders', () => {
  withTempDir((root) => {
    createGitRepository(root, 'main');
    const workflowDirectory = join(root, '.github', 'workflows');

    mkdirSync(workflowDirectory, { recursive: true });
    writeFileSync(join(workflowDirectory, 'ci.yml'), 'cache: {{PM}}\n');

    const result = runVerifier(root);

    assertVerifierCheck(result, 'FAIL', 'no unfilled placeholders');
  });
});

test('baseline verification accepts a detached HEAD when the local main ref exists', () => {
  withTempDir((root) => {
    createGitRepository(root, 'main');
    runGit(root, ['checkout', '--detach']);

    const result = runVerifier(root);

    assertVerifierCheck(result, 'ok', 'default branch is main');
  });
});

test('baseline verification accepts a remote main ref without a local main ref', () => {
  withTempDir((root) => {
    createGitRepository(root, 'baseline');
    const commit = execFileSync('git', ['rev-parse', 'HEAD'], {
      cwd: root,
      encoding: 'utf8'
    }).trim();

    runGit(root, ['update-ref', 'refs/remotes/origin/main', commit]);
    const result = runVerifier(root);

    assertVerifierCheck(result, 'ok', 'default branch is main');
  });
});

test('baseline verification rejects repositories without a main ref', () => {
  withTempDir((root) => {
    createGitRepository(root, 'baseline');

    const result = runVerifier(root);

    assertVerifierCheck(result, 'FAIL', 'default branch is main');
  });
});

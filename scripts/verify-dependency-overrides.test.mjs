import assert from "node:assert/strict";
import { mkdtempSync, rmSync, writeFileSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import test from "node:test";

import {
  verifyDependencyOverrideFiles,
  verifyDependencyOverrides,
} from "./verify-dependency-overrides.mjs";

const patchedPackageJson = {
  overrides: {
    katex: "0.18.2",
    "smol-toml": "1.9.1",
  },
};

const patchedPackageLock = {
  packages: {
    "node_modules/katex": { version: "0.18.2" },
    "node_modules/smol-toml": { version: "1.9.1" },
  },
};

test("accepts patched dependency overrides and lockfile versions", () => {
  assert.deepEqual(
    verifyDependencyOverrides(patchedPackageJson, patchedPackageLock),
    { valid: true },
  );
});

test("rejects a missing package override", () => {
  const packageJson = {
    overrides: {
      katex: "0.18.2",
    },
  };

  assert.deepEqual(
    verifyDependencyOverrides(packageJson, patchedPackageLock),
    {
      valid: false,
      error: "package.json must override smol-toml to 1.9.1.",
    },
  );
});

test("rejects an outdated lockfile resolution", () => {
  const packageLock = {
    packages: {
      "node_modules/katex": { version: "0.16.47" },
      "node_modules/smol-toml": { version: "1.9.1" },
    },
  };

  assert.deepEqual(
    verifyDependencyOverrides(patchedPackageJson, packageLock),
    {
      valid: false,
      error: "package-lock.json must resolve katex to 0.18.2.",
    },
  );
});

test("reads dependency files", () => {
  const directory = mkdtempSync(join(tmpdir(), "dependency-overrides-"));

  try {
    const packageJsonPath = join(directory, "package.json");
    const packageLockPath = join(directory, "package-lock.json");

    writeFileSync(packageJsonPath, JSON.stringify(patchedPackageJson));
    writeFileSync(packageLockPath, JSON.stringify(patchedPackageLock));

    assert.deepEqual(
      verifyDependencyOverrideFiles(packageJsonPath, packageLockPath),
      { valid: true },
    );
  } finally {
    rmSync(directory, { force: true, recursive: true });
  }
});

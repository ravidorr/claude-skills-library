import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";

const PATCHED_DEPENDENCIES = {
  katex: "0.18.2",
  "smol-toml": "1.9.1",
};

export function verifyDependencyOverrides(packageJson, packageLock) {
  for (const [name, version] of Object.entries(PATCHED_DEPENDENCIES)) {
    if (packageJson.overrides?.[name] !== version) {
      return {
        valid: false,
        error: `package.json must override ${name} to ${version}.`,
      };
    }

    if (packageLock.packages?.[`node_modules/${name}`]?.version !== version) {
      return {
        valid: false,
        error: `package-lock.json must resolve ${name} to ${version}.`,
      };
    }
  }

  return { valid: true };
}

export function verifyDependencyOverrideFiles(
  packageJsonPath = "package.json",
  packageLockPath = "package-lock.json",
) {
  try {
    return verifyDependencyOverrides(
      JSON.parse(readFileSync(packageJsonPath, "utf8")),
      JSON.parse(readFileSync(packageLockPath, "utf8")),
    );
  } catch (error) {
    const message = error instanceof Error ? error.message : String(error);
    return { valid: false, error: `Unable to read dependency files: ${message}` };
  }
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  const result = verifyDependencyOverrideFiles(...process.argv.slice(2));

  if (!result.valid) {
    console.error(result.error);
    process.exit(1);
  }

  process.stdout.write("Dependency overrides resolve to patched versions.\n");
}

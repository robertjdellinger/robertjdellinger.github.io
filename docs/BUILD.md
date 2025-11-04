# Build Script Documentation

## build-tailwind.sh

This script automates the Hugo build process with Tailwind CSS integration.

### Original Manual Command

The script is based on the following manual command that was previously used:

```bash
npm install -g pnpm && hugo && hugo mod vendor && cd ./_vendor/github.com/HugoBlox/hugo-blox-builder/modules/blox-tailwind/ && pnpm i && export HB_TW_CONTENT='../../../../../../hugo_stats.json' && npx tailwindcss -i ./assets/css/styles.css --config ./tailwind.config.js -o ../../../../../../assets/dist/wc.min.css --minify --postcss && cd ../../../../../../ && rm -rf _vendor
```

### Modern Usage

The repository now uses **Tailwind CSS v4**, which is integrated directly with Hugo and no longer requires the complex vendor-based build process from the original command.

### Usage

Run the script directly:
```bash
./scripts/build-tailwind.sh
```

Or use the npm/pnpm script:
```bash
pnpm run build:tw
```

### What it does

1. Installs pnpm dependencies from `package.json`
2. Runs `hugo --minify` to build the site
3. Generates `hugo_stats.json` (used by Tailwind for purging unused CSS)

### Notes

- The script no longer needs to vendor Hugo modules or compile Tailwind CSS separately
- Hugo automatically processes Tailwind CSS v4 during the build
- The `hugo_stats.json` file is generated automatically when `build.writeStats: true` is set in Hugo config
- The `_vendor/` directory is no longer needed and is excluded via `.gitignore`

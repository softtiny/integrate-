#!/bin/sh
set -e
cd demos/playwright-electron/pwe-a-monorepo/
cd apps
cd pwe-a
pwd
#rm -fr node_modules
#pnpm install --ignore-workspace
#https://github.com/electron/electron/issues/20731 The path.txt is missing.
node node_modules/electron/install.js
pnpm exec playwright test --list example.spec.ts
pnpm exec playwright test example.spec.ts --reporter json
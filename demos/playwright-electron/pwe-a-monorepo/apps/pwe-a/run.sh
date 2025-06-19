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
node_modules/.bin/electron ||(sudo chown root:root node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox  )
echo "llll................."
#node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
#node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
sudo chown root:root node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
sudo chmod 4755 node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
node_modules/.bin/electron
pnpm exec playwright test --list example.spec.ts
pnpm exec electron
pnpm exec playwright test example.spec.ts --reporter json
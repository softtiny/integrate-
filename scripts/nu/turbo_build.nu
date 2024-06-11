#https://turbo.build/repo/docs/getting-started


def turbo_start [] {
    #Get started with Turborepo in a few moments using:
    npx create-turbo@latest
    pnpm dlx create-turbo@latest

    #Installing turbo
    #Global installation
    npm install turbo --global
    pnpm install turbo --global

    #Repository installation
    pnpm add turbo --save-dev --ignore-workspace-root-check
    npm install turbo --save-dev

    #Start with an example
    npx create-turbo@latest --example [example-name] #basic design-system kitchen-sink non-monorepo with-changesets with-tailwind
    pnpm dlx create-turbo@latest --example [example-name]
}

def main [] {
    echo "Turborepo is a high-performance build system for JavaScript and TypeScript codebases. It is designed for scaling monorepos and also makes workflows in single-package workspaces faster, too."
    echo "Turborepo solves your monorepo's scaling problem. "
    echo "problem. Remote Cache stores the result of all your tasks, meaning that your CI never needs to do the same work twice."
}
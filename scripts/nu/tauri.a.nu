

def tauri2_0 {
    echo "While Tauri 2.0 is still in the prerelease stage people follow these guidelines for writing documentation:"
    echo "name: tauri v2.0.0-beta.21"
    echo "published_at: 2024-05-29T03:38:21Z"
}
def tauri1_x{
    #Build an optimized, secure, and frontend-independent application for multi-platform deployment.
    #cargo
    cargo install create-tauri-app --locked
    cargo create-tauri-app

    #pnpm
    pnpm create tauri-app
}

def tauri_nextjs{
    #Static-Site Generation (SSG) capabilities. To make Next.js work with Tauri we are going to use the SSG mode since it generates only static files that can be included in the final binary.

    #Install Tauri CLI
    pnpm add -D @tauri-apps/cli
    #or
    cargo install tauri-cli

    #is pre-configured to use Tauri, open a terminal and run the following command:
    pnpm tauri init
    #or
    cargo tauri init

}

#Using JavaScript Library
def tauri_api [] {
    npm install @tauri-apps/api
    pnpm add @tauri-apps/api
}

#Running Your App
def tauri_run [] {
    npm run tauri dev
    pnpm tauri dev
    cargo tauri dev
}

#Using the Inspector in Production
def tarui_build_debug [] {
    cargo tauri build --debug
    pnpm tauri build --debug
    #Enable Devtools Feature
    #src-tauri/Cargo.toml
    echo '[dependencies]
tauri = { version = "...", features = ["...", "devtools"] }'

    #Debugging the Core Proces
    #The Core process is powered by Rust so you can use GDB or LLDB to debug it. 
}

def electron_leveldb_migrate [] {
    echo "leveldb-rs: called `Result::unwrap()` on an `Err` value: Status { code: Corruption, err: 'Corruption: no meta-lognumber entry in descriptor' }"
}

def main [] {
    echo "Build an optimized, secure, and frontend-independent application for multi-platform deployment."
}
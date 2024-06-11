def pnpm_conf [] {
    pnpm config list -g
}
def pnpm_winds [] {
    SET XDG_DATA_HOME=C:\xxx
}

def pnpm_env [] {
    #These environment variables may influence what directories pnpm will use for storing global information:
    echo "XDG_CACHE_HOME
    XDG_CONFIG_HOME
    XDG_DATA_HOME
    XDG_STATE_HOME"
}

def main [] {
    echo "Fast, disk space efficient package manager"
}
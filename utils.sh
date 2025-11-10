color() { echo -e "\033[1;36m$1\033[0m"; }
error() { echo -e "\033[1;31m$1\033[0m" >&2; exit 1; }
check_cmd() { command -v "$1" >/dev/null 2>&1 || error "Missing command: $1"; }

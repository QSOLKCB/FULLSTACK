# === Utility Functions ===

color() { echo -e "\033[1;36m$1\033[0m"; }
warn() { echo -e "\033[1;33m⚠️  $1\033[0m"; }
error() { echo -e "\033[1;31m❌ $1\033[0m" >&2; exit 1; }
check_cmd() { command -v "$1" >/dev/null 2>&1 || error "Missing command: $1"; }

# Logging helper
log() { echo "$(date +%H:%M:%S) | $1" >> "$LOGFILE"; }

# Spinner (for show)
spinner() {
  local pid=$1 delay=0.15 spinstr='|/-\'
  while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
    local temp=${spinstr#?}
    printf " [%c]  " "$spinstr"
    local spinstr=$temp${spinstr%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
}

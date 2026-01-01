
# Stop any running emulator
kill_emu() {
  pkill -9 qemu || true
  pkill -9 qemu-system-x86_64 || true
}

# Copy content to the clipboard
#
# Usage:
#   - xcp <string>
#   - <string> | xcp
xcp() {
  local content

  if [[ -n "$1" ]]; then
    content="$1"
  elif [[ ! -t 0 ]]; then
    content=$(cat)
  fi

  content=$(trim "$content")

  if [[ -z "$content" ]]; then
    print_error "nothing to copy"
    return 1
  fi

  printf "%s" "$content" | xclip -selection clipboard
}

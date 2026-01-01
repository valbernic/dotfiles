
# Remove leading and trailing whitespace from a string
#
# Usage:
#   - trim <string>
#   - <string> | trim
trim() {
  local str

  if [[ -n "$1" ]]; then
    str="$1"
  elif [[ ! -t 0 ]]; then
    str=$(cat)
  fi

  if [[ -z "$str" ]]; then
    print_error "nothing to trim"
    return 1
  fi

  printf "%s" "$str" | sed 's/^[[:space:]]*//; s/[[:space:]]*$//'
}

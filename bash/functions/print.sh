
print_warning() {
  local msg="warning: $1"
  echo -e "\e[33m$msg\e[0m"
}

print_error() {
  local msg="error: $1"
  echo -e "\e[31m$msg\e[0m" >&2
}

print_bf() {
  echo -e "\e[1m$1\e[0m"
}

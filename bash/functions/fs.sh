
# Print the SHA-1 hash of a file
#
# Usage:
#   - fhash <file>
fhash() {
  sha1sum $1 | cut -d " " -f1
}

# Print the size of a file or directory
#
# Usage:
#   - fsize <file_or_directory>
fsize() {
  if [[ -d "$1" ]]; then
    du -sb "$1" | cut -f1
  elif [[ -f "$1" || -L "$1" ]]; then
    stat -Lc %s "$1"
  else
    print_error "unsupported file type"
    return 1
  fi
}

# Print the human-readable size of a file or directory
#
# Usage:
#   - fsizeh <file_or_directory>
fsizeh() {
  echo $(fsize "$1" | numfmt --to=iec)
}

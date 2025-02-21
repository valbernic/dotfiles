function kill_emu() {
  pkill -9 qemu || true
  pkill -9 qemu-system-x86_64 || true
}


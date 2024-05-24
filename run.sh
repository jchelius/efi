make
cp bootx64.efi root/efi/boot/bootx64.efi
qemu-system-x86_64 \
  -drive if=pflash,format=raw,file=/home/jonathan/source/ws/efi-tutorial/OVMF.fd \
  -drive format=raw,file=fat:rw:root \
  -net none \
  -nographic

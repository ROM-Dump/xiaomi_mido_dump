#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29252942:5bdcf0ea0cfcc87e5fb680d8a7edd601b8529f61; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26258762:1c41f247e6ab6877c8f4df6c9cc6fd7b6f90d971 EMMC:/dev/block/bootdevice/by-name/recovery 5bdcf0ea0cfcc87e5fb680d8a7edd601b8529f61 29252942 1c41f247e6ab6877c8f4df6c9cc6fd7b6f90d971:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

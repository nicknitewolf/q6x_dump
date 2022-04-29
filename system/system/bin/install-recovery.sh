#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/recovery:16373760:b6e85daf0a2471ac76359bbbea36ab3947cbd029; then
  applypatch  EMMC:/dev/block/boot:9687040:b8d22e2780e9e43c2098beb05b541e574e6a1907 EMMC:/dev/block/recovery b6e85daf0a2471ac76359bbbea36ab3947cbd029 16373760 b8d22e2780e9e43c2098beb05b541e574e6a1907:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

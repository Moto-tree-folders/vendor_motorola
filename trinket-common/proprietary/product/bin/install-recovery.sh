#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:57936f48fa13102eda9f47934cc13ad24541a1e9; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:846e6cfbd1d265ae79d8f4323c4203cd82fee6f3 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:57936f48fa13102eda9f47934cc13ad24541a1e9 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

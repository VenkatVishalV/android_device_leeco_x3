#!/bin/sh
# loggy.sh

_date=`date +%F_%H-%M-%S`

case "$1" in
  system)
    logcat > /sdcard/loggy/system/loggy_system_${_date}.txt
    ;;
  *)
    cat /proc/last_kmsg > /sdcard/loggy/kernel/loggy_kernel_${_date}.txt
    ;;
esac


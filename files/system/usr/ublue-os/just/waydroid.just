## From: https://github.com/plata/ublue-surface/blob/main/files/system/usr/share/ublue-os/just/waydroid.just
init-waydroid-normal:
  #!/usr/bin/env bash
  set -euxo pipefail
  sudo waydroid init -c 'https://ota.waydro.id/system' -v 'https://ota.waydro.id/vendor'

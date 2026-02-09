# vim: set ft=make :

## Modified: https://github.com/plata/ublue-surface/blob/main/files/system/usr/share/ublue-os/just/waydroid.just 

# Quickly initialize a Waydroid image
init-waydroid:
  sudo waydroid init -c 'https://ota.waydro.id/system' -v 'https://ota.waydro.id/vendor'


# Remove all Waydroid-related files in your user folders
reset-waydroid:
  bash -c 'sudo rm -rf /var/lib/waydroid /home/.waydroid ~/waydroid ~/.share/waydroid ~/.local/share/applications/*aydroid* ~/.local/share/waydroid'

waydroid-vm:
  "ro.hardware.gralloc=default\nro.hardware.egl=swiftshader" | sudo tee -a /var/lib/waydroid/waydroid.cfg
  sudo waydroid upgrade -o


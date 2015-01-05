# Disk Images #
###############

# Toggle whether Disk Images are auto-mounted
function osx_disk_images_auto_mount {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Disk Images - Toggle Disk Images are auto-mounted enabled is ${enabled} ($1)."

  defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool $enabled
  defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool $enabled
  defaults write com.apple.frameworks.finder OpenWindowForNewRemovableDisk -bool $enabled
}
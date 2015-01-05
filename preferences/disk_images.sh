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

# Toggle whether Disk Images are verified
function osx_disk_images_verification {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Disk Images - Toggle Disk Images are verified enabled is ${enabled} ($1)."

  defaults write com.apple.frameworks.diskimages skip-idme -bool $enabled
  defaults write com.apple.frameworks.diskimages skip-verify -bool $enabled
  defaults write com.apple.frameworks.diskimages skip-verify-locked -bool $enabled
  defaults write com.apple.frameworks.diskimages skip-verify-remote -bool $enabled
}
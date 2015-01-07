# Disk Utility #
################

# Toggle advanced image options in Disk Utility
function osx_disk_utility_advanced_image_options {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="1"; else enabled="0"; fi

  echo "  + PREFERENCE: Disk Utility - Toggle Disk Utility advanced image options enabled is ${enabled} ($1)."

  defaults write com.apple.DiskUtility advanced-image-options -int $enabled
}
# Displays #
############

# Toggle whether Display brightness is automatically adjusted depending on ambient light
function osx_displays_auto_brightness_adjustment {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="1"; else enabled="0"; fi

  echo "  + PREFERENCE: Dialogs - Toggle Dialogs automatically adjust display brightness enabled is ${enabled} ($1)."

  sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -int $enabled
}
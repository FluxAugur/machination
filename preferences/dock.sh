# Dock #
########

# Toggle whether hidden applications are dimmed in Dock
function osx_dock_hidden_app_dimming {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Dock - Toggle whether hidden applications are dimmed in Dock enabled is ${enabled} ($1)."

  defaults write com.apple.dock showhidden -bool $enabled
}

# Toggle whether indicator lights are shown under running applications in Dock
function osx_dock_indicator_lights {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Dock - Toggle whether indicator lights are shown under running applications in Dock enabled is ${enabled} ($1)."

  defaults write com.apple.dock show-process-indicators -bool $enabled
}

# Toggle whether iTunes notifications are displayed in Dock
function osx_dock_itunes_notifications {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Dock - Toggle whether iTunes notifications are displayed in Dock enabled is ${enabled} ($1)."

  defaults write com.apple.dock itunes-notifications -bool $enabled
  defaults write com.apple.dock notifications-always-show-image -bool $enabled
}

# Toggle whether to only show running applications in Dock
function osx_dock_only_show_running_apps {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Dock - Toggle whether to only show running applications in Dock enabled is ${enabled} ($1)."

  defaults write com.apple.dock static-only -bool $enabled
}
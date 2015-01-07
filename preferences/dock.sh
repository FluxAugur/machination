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
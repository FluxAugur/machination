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

# Toggle whether to automatically hide the Dock
function osx_dock_autohide {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi; shift 1;
  local delay="$1"; shift 1;
  local speed="$1"; shift 1;

  echo "  + PREFERENCE: Dock - Toggle whether to automatically hide the Dock enabled is ${enabled} ($delay $speed)."

  defaults write com.apple.dock autohide -bool $enabled

  # Set the delay when automatically hiding the Dock
  if [[ "$delay" != "" ]]; then
    defaults write com.apple.dock autohide-delay -float $delay
  fi

  if [[ "$speed" != "" ]]; then
    defaults write com.apple.dock autohide-time-modifier -float $speed
  fi
}

# Clear pinned icons from the Dock
#
# Prevent launchpad from reappearing
# Remove all the pinned icons
function osx_dock_clear {
  echo "  + PREFERENCE: Dock - Clear pinned icons from the Dock."

  defaults write com.apple.dock checked-for-launchpad -bool true
  defaults write com.apple.dock persistent-apps -array ""
  defaults write com.apple.dock persistent-others -array ""

  rm -f $HOME/Library/Application\ Support/Dock/*db 2> /dev/null && killall Dock

  for (( i = 0; i < 5; i++ )); do
    echo "."; sleep 1
    echo "."; sleep 1
  done

  #sqlite3 $HOME/Library/Application\ Support/Dock/*-*.db "DELETE FROM apps; DELETE FROM groups WHERE rowid>2; DELETE FROM items WHERE rowid>4; DELETE FROM widgets;" && killall Dock
}

# Disable the Dock by setting a long autohide-delay
function osx_dock_disable {
  echo "  + PREFERENCE: Dock - Disable the Dock."

  defaults write com.apple.dock autohide -bool true
  defaults write com.apple.dock autohide-delay -float 999999
}
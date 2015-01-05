# Airport #
###########

path_to_airport_binary="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"

# Toggle Airport "Disconnect on logout" preference
function osx_airport_disconnect_on_logout {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="YES"; else enabled="NO"; fi

  echo "PREFERENCE: Airport - Toggle \"disconnect on logout\" enabled is ${enabled}."
  shift 1;

  sudo $path_to_airport_binary prefs DisconnectOnLogout=${enabled}
}

# Set what to do when preferred networks are available
#
# Modes: Automatic | Preferred | Ranked | Recent | Strongest
function osx_airport_join_mode {
  local mode="$1";

  echo "PREFERENCE: Airport - Join when preferred networks are available mode is ${mode} ($1)."
  shift 1;

  sudo $path_to_airport_binary JoinMode=${mode}
}

# Set what to do when none of the preferred networks are available
#
# Modes: Prompt | JoinOpen | KeepLooking | DoNothing
function osx_airport_join_mode_fallback {
  local mode="$1";

  echo "PREFERENCE: Airport - Fallback when preferred networks are not available mode is ${mode} ($1)."
  shift 1;

  sudo $path_to_airport_binary JoinModeFallback=${mode}
}

# Toggle Airport "Remember recent networks" preference
function osx_airport_remember_recent_networks {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="YES"; else enabled="NO"; fi

  echo "PREFERENCE: Airport - Toggle \"remember recent networks\" enabled is ${enabled}."
  shift 1;

  sudo $path_to_airport_binary prefs RememberRecentNetworks=${enabled}
}

# Toggle Airport "Require password for computer-to-computer networks" preference
function osx_airport_require_password_for_computer_to_computer_networks {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="YES"; else enabled="NO"; fi

  echo "PREFERENCE: Airport - Toggle \"require password for computer-to-computer networks\" enabled is ${enabled}."
  shift 1;

  sudo $path_to_airport_binary prefs RequireAdminIBSS=${enabled}  
}
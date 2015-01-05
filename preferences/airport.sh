# Airport #
###########

path_to_airport_binary="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"

# Toggle Airport "Disconnect on logout" preference
function osx_airport_disconnect_on_logout {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="YES"; else enabled="NO"; fi

  sudo $path_to_airport_binary prefs DisconnectOnLogout=${enabled}
}


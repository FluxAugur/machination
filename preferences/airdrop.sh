# AirDrop #
###########

# Toggle whather AirDrop allows you to "drop" to any interface
function osx_airdrop_access_all_interfaces {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi;

  echo "PREFERENCE: AirDrop - \"Drop\" to any interface enabled is ${enabled} ($1)."
  shift 1;

  defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool $enabled
}
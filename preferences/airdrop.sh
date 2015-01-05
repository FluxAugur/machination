# AirDrop #
###########

# Toggle whather AirDrop allows you to "drop" to any interface
function osx_airdrop_access_all_interfaces {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi; shift 1;

  defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool $enabled
}
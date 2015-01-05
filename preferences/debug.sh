# Debug #
#########

# Toggle Debug mode
function osx_debug_mode {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Debug - Toggle Debug mode enabled is ${enabled} ($1)."

  # Toggle Disk Utility Debug mode
  defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool $enabled
  defaults write com.apple.diskcopy expert-mode -bool $enabled

  # Toggle Address Book Debug mode
  defaults write com.apple.addressbook ABShowDebugMenu -bool $enabled

  # Toggle Calendar Debug mode
  defaults write com.apple.iCal IncludeDebugMenu -bool $enabled

  # Toggle Safari Debug mode
  defaults write com.apple.Safari IncludeInternalDebugMenu -bool $enabled

  # Toggle App Store Debug mode
  defaults write com.apple.appstore ShowDebugMenu -bool $enabled
  defaults write com.apple.appstore WebKitDeveloperExtras -bool $enabled

  # Toggle Help Viewer Debug mode
  defaults write com.apple.helpviewer DevMode -bool $enabled

  # Toggle Developer Extras in all web views
  sudo defaults write NSGlobalDomain WebKitDeveloperExtras -bool $enabled

  # Toggle iBooks Debug mode
  defaults write com.apple.iBooksX BKShowDebugMenu -bool $enabled

  # Toggle PhotoBooth Debug mode
  defaults write com.apple.PhotoBooth EnableDebugMenu -bool $enabled

  # Toggle Reminders Debug mode
  defaults write com.apple.reminders RemindersDebugMenu -bool $enabled

  # Toggle ScreenSharing Debug mode
  defaults write com.apple.ScreenSharing debug -bool $enabled

  # Toggle TimeMachine Debug mode
  defaults write com.apple.Backup IncludeDebugMenu -bool $enabled
}
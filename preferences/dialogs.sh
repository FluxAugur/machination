# Dialogs #
###########

# Toggle whether print panel is expanded
function osx_dialogs_auto_expanding_print_dialog {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Dialogs - Toggle print panel expanded enabled is ${enabled} ($1)."

  defaults write NSGlobalDomain PMPrintExpandedStateForPrint -bool $enabled
  defaults write NSGlobalDomain PMPrintExpandedStateForPrint2 -bool $enabled
}
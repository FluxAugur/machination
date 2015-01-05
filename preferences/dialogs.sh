# Dialogs #
###########

# Toggle whether print panel is expanded
function osx_dialogs_auto_expanding_print_dialog {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Dialogs - Toggle print panel expanded enabled is ${enabled} ($1)."

  defaults write NSGlobalDomain PMPrintExpandedStateForPrint -bool $enabled
  defaults write NSGlobalDomain PMPrintExpandedStateForPrint2 -bool $enabled
}

# Set file dialog view mode
function osx_dialogs_file_view_mode {
  local mode="$1";

  case $mode in
  icon_grid)
    mode="1";;
  list)
    mode="2";;
  *)
    mode="$mode";;
  esac

  echo "  + PREFERENCE: Desktop - File dialog mode is ${mode} ($1)."

  defaults write NSGlobalDomain NavPanelFileListModeForOpenMode -int $mode
  defaults write NSGlobalDomain NavPanelFileListModeForSaveMode -int $mode
  defaults write NSGlobalDomain NSNavPanelFileListModeForOpenMode2 -int $mode
  defaults write NSGlobalDomain NSNavPanelFileListModeForSaveMode2 -int $mode
  defaults write NSGlobalDomain NSNavPanelFileLastListModeForOpenModeKey -int $mode
  defaults write NSGlobalDomain NSNavPanelFileLastListModeForSaveModeKey -int $mode
}
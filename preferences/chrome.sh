# Chrome #
##########

# Toggle Chrome and Canary print preview
function chrome_use_system_print_dialog {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Google Chrome - Toggle print preview enabled is ${enabled}."
  shift 1;

  defaults write com.google.Chrome DisablePrintPreview -bool $enabled
  defaults write com.google.Chrome.canary DisablePrintPreview -bool $enabled
}

# Toggle Chrome and Canary backswipe gesture
function chrome_allow_swipe_to_navigate {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  echo "  + PREFERENCE: Google Chrome - Toggle Apple swipe navigational gestures enabled is ${enabled}."
  shift 1;

  defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool $enabled
  defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool $enabled
}

# Allow Chrome and Canary extensions to be installed from additional sources
function chrome_allow_extension_install_sources {
  echo "  + PREFERENCE: Google Chrome - Additional extension installation sources are $@."

  defaults write com.google.Chrome ExtensionInstallSources -array $@
  defaults write com.google.Chrome.canary ExtensionInstallSources -array $@
}
# Chrome #
##########

# Disable Chrome and Canary print preview
function chrome_use_system_print_dialog {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

  defaults write com.google.Chrome DisablePrintPreview -bool $enabled
  defaults write com.google.Chrome.canary DisablePrintPreview -bool $enabled
}
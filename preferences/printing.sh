# Printing #
############

# Toggle whether the Print Dialog should disappear when all jobs are complete
function osx_printing_quit_when_finished {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi

echo "  + PREFERENCE: Printing - Print dialog disappears when all jobs are complete enabled is ${enabled} ($1)."

defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool $enabled
}
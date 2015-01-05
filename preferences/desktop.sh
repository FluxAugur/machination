# Desktop #
###########

# Toggle whether the Desktop is enabled
function osx_desktop {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi; shift 1;

  echo "  + PREFERENCE: Desktop - Toggle Desktop enabled is ${enabled} ($1)."

  defaults write com.apple.finder CreateDesktop -bool $enabled;
}

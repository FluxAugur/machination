# Desktop #
###########

# Toggle whether the Desktop is enabled
function osx_desktop {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi; shift 1;

  echo "  + PREFERENCE: Desktop - Toggle Desktop enabled is ${enabled} ($1)."

  defaults write com.apple.finder CreateDesktop -bool $enabled;
}

# Show internal drives on the Desktop
function osx_desktop_displayed_items {
  local key="$1"; shift 1;
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi; shift 1;

  case "$key" in
  internal_hard_drives)
    key="ShowHardDrivesOnDesktop";;
  external_hard_drives)
    key="ShowExternalHardDrivesOnDesktop";;
  mounted_servers)
    key="ShowMountedServersOnDesktop";;
  removable_media)
    key="ShowRemovableMediaOnDesktop";;
  esac

  defaults write com.apple.finder $key -bool $enabled;
}
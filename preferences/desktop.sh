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

  echo "  + PREFERENCE: Desktop - Drives shown on Desktop enabled is ${enabled} ($key)."

  defaults write com.apple.finder $key -bool $enabled;
}

# Set Desktop icon size
function osx_desktop_icon_size {
  local size="$1"; shift 1;
  local grid_spacing="$1"; shift 1;

  echo "  + PREFERENCE: Desktop - Desktop icon size is ${size} ($grid_spacing)."

  defaults write com.apple.finder DesktopViewOptions.IconSize -int $size

  $path_to_plistbuddy -c "Delete :DesktopViewSettings:IconViewSettings:iconSize" /Users/${whoami}/Library/Preferences/com.apple.finder.plist 2> /dev/null
  $path_to_plistbuddy -c "Add :DesktopViewSettings:IconViewSettings:iconSize integer $size" /Users/${whoami}/Library/Preferences/com.apple.finder.plist 2> /dev/null

  $path_to_plistbuddy -c "Delete :DesktopViewSettings:IconViewSettings:gridSpacing" /Users/${whoami}/Library/Preferences/com.apple.finder.plist 2> /dev/null
  $path_to_plistbuddy -c "Add : DesktopViewSettings:IconViewSettings:gridSpacing integer $grid_spacing" /Users/${whoami}/Library/Preferences/com.apple.finder.plist 2> /dev/null
}
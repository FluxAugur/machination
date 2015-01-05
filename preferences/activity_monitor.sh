# Activity Monitor #
####################

# Show the main window when launching Activity Monitor
function osx_activity_monitor_open_main_window {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi; shift 1;

  defaults write com.apple.ActivityMonitor OpenMainWindow -bool $enabled
}

# Show graph in Activity Monitor dock icon
function osx_activity_monitor_icon_mode {
  local mode;

  case "$1" in
  cpu_usage)
      mode="5";;
  *)
      mode="$1";;
  esac

  defaults write com.apple.ActivityMonitor IconType -int $mode
}

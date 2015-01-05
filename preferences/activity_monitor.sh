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

# Show processes as list items in Activity Monitor
function osx_activity_monitor_processes_to_list {
  local mode;

  case "$1" in
  all_processes)
    mode="0";;
  *)
    mode="$1";;
  esac

  defaults write com.apple.ActivityMonitor ShowCategory -int $mode
}

# Show Activity Monitor results sorted by a column (value) in a direction (mode)
function osx_activity_monitor_sort_by_column_in_direction {
  local value;

  case "$1" in
  cpu_usage)
    value="CPUUsage";;
  *)
    value="$1";;
  esac

  defaults write com.apple.ActivityMonitor SortColumn -string $value

  local mode; if [[ "$2" == "ascending" ]]; then mode="1"; else mode="0"; fi; shift 1;

  defaults write com.apple.ActivityMonitor SortDirection -int $mode
}
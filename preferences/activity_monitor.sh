# Activity Monitor #
####################

# Show the main window when launching Activity Monitor
function osx_activity_monitor_open_main_window {
  local enabled; if [[ "$1" == "enabled" ]]; then enabled="true"; else enabled="false"; fi;

  echo "PREFERENCE: Activity Monitor - Open main window enabled is ${enabled}."
  shift 1;

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

  echo "PREFERENCE: Activity Monitor - Dock icon graph mode is ${mode} ($1)."
  shift 1;

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

  echo "PREFERENCE: Activity Monitor - Show processes as list items mode is ${mode} ($1)."
  shift 1;

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

  echo "PREFERENCE: Activity Monitor - Sort column value is ${value} ($1)."
  shift 1;

  defaults write com.apple.ActivityMonitor SortColumn -string $value

  local mode; 

  case "$2" in
  descending)
    mode="0";;
  ascending)
    mode="1";;
  *)
    mode="$1";;
  esac

  echo "PREFERENCE: Activity Monitor - Sort direction mode is ${mode} ($1)."
  shift 1;

  defaults write com.apple.ActivityMonitor SortDirection -int $mode
}
# Recommended Profile Preferences #
###################################

# Set Preferences
function set_preferences {
  # Activity Monitor Preferences
  osx_activity_monitor_open_main_window             enabled
  osx_activity_monitor_icon_mode                    cpu_usage
  osx_activity_monitor_processes_to_list            all_processes
  osx_activity_monitor_sort_by_column_in_direction  cpu_usage         descending

  osx_preferences_apply
}
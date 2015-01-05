# Recommended Profile Preferences #
###################################

# Set Preferences
function set_preferences {
  # Activity Monitor Preferences
  osx_activity_monitor_open_main_window                               enabled
  osx_activity_monitor_icon_mode                                      cpu_usage
  osx_activity_monitor_processes_to_list                              all_processes
  osx_activity_monitor_sort_by_column_in_direction                    cpu_usage                                         descending

  # AirDrop Preferences
  osx_airdrop_access_all_interfaces                                   enabled

  # Airport Preferences
  osx_airport_disconnect_on_logout                                    enabled
  osx_airport_join_mode                                               Preferred
  osx_airport_join_mode_fallback                                      DoNothing
  osx_airport_remember_recent_networks                                disabled
  osx_airport_require_password_for_computer_to_computer_networks      enabled

  # Chrome Preferences
  chrome_use_system_print_dialog                                      enabled
  chrome_allow_swipe_to_navigate                                      disabled
  chrome_allow_extension_install_sources                              'https://gist.githubusercontent.com/'             'http://userscripts.org/*'

  # Printing Preferences
  osx_printing_quit_when_finished                                     enabled

  osx_preferences_apply
}
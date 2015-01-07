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

  # Dashboard Preferences
  osx_dashboard                                                       disabled

  # Debugging Preferences
  osx_debug_mode                                                      enabled

  # Dialogs Preferences
  osx_dialogs_auto_expanding_print_dialog                             enabled
  osx_dialogs_auto_expanding_save_dialog                              enabled
  osx_dialogs_file_view_mode                                          list

  # Disk Images Preferences
  osx_disk_images_auto_mount                                          enabled
  osx_disk_images_verification                                        enabled

  # Disk Utility Preferences
  osx_disk_utility_advanced_image_options                             enabled
  osx_disk_utility_hidden_partitions                                  enabled
  osx_disk_utility_unsupported_networks                               enabled

  # Dock Preferences
  osx_dock_hidden_application_dimming                                 enabled
  osx_dock_indicator_lights                                           disabled
  osx_dock_autohide                                                   enabled                                           0.0                           0.25
  osx_dock_icon_bounce_on_application_launch                          disabled
  osx_dock_icon_bounce_on_application_activity                        disabled
  osx_dock_full_screen_delay                                          disabled
  osx_dock_icon_size                                                  40
  osx_dock_magnification                                              enabled                                           60
  osx_dock_clear

  # Printing Preferences
  osx_printing_quit_when_finished                                     enabled

  osx_preferences_apply
}
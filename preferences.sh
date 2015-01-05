# Preferences #
###############

path_to_plistbuddy="/usr/libexec/PlistBuddy"

# Synchronize preferences
function osx_preferences_synchronize {
  /System/Library/Frameworks/Python.framework/Versions/Current/bin/python2 - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

# Apply preferences
function osx_preferences_apply {
  echo "\nResetting applications for updated preferences to take effect."

  osx_preferences_synchronize com.apple.Finder

  for application in 'Activity Monitor'\
                     'Calendar'\
                     'Contacts'\
                     'cfprefsd'\
                     'Dock'\
                     'Finder'\
                     'Mail'\
                     'Messages'\
                     'Safari'\
                     'SizeUp'\
                     'SystemUIServer'\
                     'Transmission'\
                     'Twitter'; do

    sudo killall "${application}" > /dev/null 2>&1
  done

  sudo touch /System/Library/Extensions
  sudo killall -HUP nDNSResponder > /dev/null 2>&1

  dscacheutil -flushcache

  sudo find / -xdev -name '.DS_Store' -exec rm -f {} \;

  # Give the system time to commit changes from cache
  for (( i = 0; i < 20; i++ )); do
    printf "."; sleep 1;
    printf "."; sleep 2;
  done

  echo ""
  echo "Some updated preferences require a restart to take effect.\n"
}

source './preferences/activity_monitor.sh'
source './preferences/airdrop.sh'
source './preferences/airport.sh'
source './preferences/chrome.sh'
source './preferences/dashboard.sh'
source './preferences/printing.sh'
# Preferences #
###############

path_to_plistbuddy="/usr/libexec/PlistBuddy"

# Synchronize preferences
function osx_preferences_synchronize {
  /System/Library/Frameworks/Python.framework/Versions/Current/bin/python2 - <<END
    from Foundation Import CFPreferencesAppSynchronize
    CFPreferencesAppSynchronize('$1')
END
}


# Bootstrap #
#############

source "./homebrew.sh"
source "./profiles.sh"
source "./preferences.sh"

echo "\nBootstrapping..."

install_homebrew
install_or_upgrade_package wget

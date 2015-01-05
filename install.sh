# Install #
###########

#!/bin/sh

source "./authorization.sh"
source "./bootstrap.sh"

echo "\nInstalling..."

install_profile recommended
install_profile `whoami`

#secure

source "./post_install.sh"
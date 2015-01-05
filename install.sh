# Install #
###########

#!/bin/sh

source "./bootstrap.sh"

install_profile recommended
install_profile `whoami`

secure

source "./post_install.sh"
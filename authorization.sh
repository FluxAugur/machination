# Authorization #
#################

# Ask for the administrator password upfront
echo "\nAuthorizing..."
sudo -v

# Keep-alive: update existing sudo timestamp until `install.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2> /dev/null &
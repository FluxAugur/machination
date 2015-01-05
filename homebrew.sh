# Homebrew #
############

# Install or upgrade package
function install_or_upgrade_package {
  local package_name=$1; shift 1;

  if [ -z "$(/usr/local/bin/brew list -1 | grep $package_name)" ]; then
    echo "~ HOMEBREW: Installing $package_name."

    brew install $package_name
  else
    echo "~ HOMEBREW: Upgrading $package_name."

    brew upgrade $package_name 2> /dev/null
  fi
}

# Install Homebrew
function install_homebrew {
  if ! [ -x /usr/local/bin/brew ]; then
    echo "Installing HOMEBREW."
    
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  echo "Updating HOMEBREW."
  /usr/local/bin/brew update

  install_or_upgrade_package caskroom/cask/brew-cask
  brew tap caskroom/versions
}
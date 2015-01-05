# Application Installers #
##########################

# Download application installer from remote url to local file
function download_app {
  local url="$1"; shift 1;
  local local_file="$1"; shift 1;

  if ! [ -a "$local_file" ]; then
    echo "Downloading from ${url} to ${local_file}."

    wget -0 "$local_file" "$url"
  fi
}

# Install Pagekite for localhost tunneling
function install_pagekite {
  local pagekite_url='https://pagekite.net/pk/pagekite.py'
  local pagekite_local_binary='/usr/local/bin/pagekite.py'

  if ! [ -a "$pagekite_local_binary" ]; then
    echo "Installing PAGEKITE."

    download_app $pagekite_url $pagekite_local_binary
    chmod 755 "$pagekite_local_binary"
    mkdir /usr/local/var/run
    sudo touch /var/log/pagekite.log
    sudo chown `whoami`:staff /var/log/pagekite.log

    "$pagekite_local_binary" --signup
  fi
}

# Install application from Mac App Store
function install_mac_app_store_app {
  local app_name="$1"; shift 1;added

  if ! [ -a "/Applications/$app_name" ]; then
    echo "$app_name is in the Mac App Store."
    echo "Press <RETURN> to continue..."
    read
  fi
}
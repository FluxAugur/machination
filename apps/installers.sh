# Application Installers #
##########################

# TODO Add user feedback

# Download application installer from remote url to local file
function download_app {
  local url="$1"; shift 1; # TODO Move shift after user feedback added
  local local_file="$1"; shift 1; # TODO Move shift after user feedback added

  if ! [ -a "$local_file" ]; then
    wget -0 "$local_file" "$url"
  fi
}

# Install Pagekite for localhost tunneling
function install_pagekite {
  local pagekite_url='https://pagekite.net/pk/pagekite.py'
  local pagekite_local_binary='/usr/local/bin/pagekite.py'

  if ! [ -a "$pagekite_local_binary" ]; then
    download_app $pagekite_url $pagekite_local_binary
    chmod 755 "$pagekite_local_binary"
    mkdir /usr/local/var/run
    sudo touch /var/log/pagekite.log
    sudo chown `whoami`:staff /var/log/pagekite.log

    "$pagekite_local_binary" --signup
  fi
}
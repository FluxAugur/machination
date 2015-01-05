# Application Installers #
##########################

# Download application installer from remote url to local file
function download_app {
  local url="$1"; shift 1; # TODO Move shift after user feedback added
  local local_file="$1"; shift 1; # TODO Move shift after user feedback added

  if ! [ -a "$local_file" ]; then
    wget -0 "$local_file" "$url"
  fi
}

# Profiles #
############

# Install profile
function install_profile {
  local profile_name="$1"; shift 1;

  if [ -x "./profiles/${profile_name}" ]; then
    echo "PROFILE: ${profile_name}..."

    source "./profiles/${profile_name}.sh"
  else
    echo "\tERROR (PROFILE): No profile found for ${profile_name}."
  fi
}
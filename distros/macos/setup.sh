#!/bin/bash

############
### Vars ###
############
is_macos="$(uname -s | grep Darwin)"
if [ ! "$is_macos" ]; then
    echo "Not MacOS. Skipping package installation."
    exit 0
fi

source_dir=$(pushd $(dirname $0) >/dev/null && pwd && popd >/dev/null)
config_dir="$source_dir/config"

################
### Packages ###
################
NONINTERACTIVE=1 bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install $(cat $source_dir/packages/*)

# curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# fisher install \
#     jorgebucaran/fisher \
#     jhillyerd/plugin-git \
#     franciscolourenco/done \
#     gazorby/fish-abbreviation-tips \
#     jorgebucaran/nvm.fish \
#     jorgebucaran/humantime.fish
##############
### Config ###
##############
mkdir -p "$HOME/Library/Application Support/iTerm2/DynamicProfiles"

# Use stow to symlink configuration files
stow home -t $HOME -R -d $config_dir

# Preferences
if [ -f "$source_dir/preferences.sh" ]; then
    source "$source_dir/preferences.sh"
else
    echo "No preferences.sh found. Skipping preferences setup."
fi  

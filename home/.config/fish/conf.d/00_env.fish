set -xg CACHE "$HOME/.cache"
set -xg ANDROID_HOME $HOME/Android/Sdk

# PATH 
set -xg PATH $PATH $HOME/.SpaceVim/bin

set -xg PATH $PATH $HOME/go/bin

set -xg PATH $PATH $HOME/.yarn/bin

set -xg PATH $PATH $HOME/.dotnet/tools

set -xg PATH $PATH $ANDROID_HOME/tools
set -xg PATH $PATH $ANDROID_HOME/platform-tools
set -xg PATH $PATH $HOME/.gem/ruby/2.7.0/bin
set -xg PATH $PATH $HOME/.gem/ruby/3.0.0/bin

set -xg PATH $PATH $HOME/.local/bin

# dotnet
set -xg DOTNET_CLI_TELEMETRY_OPTOUT 1
set -xg DOTNET_ROOT /opt/dotnet
set -xg LD_LIBRARY_PATH /usr/local/lib

# Vim
set -xg SPACEVIMDIR $HOME/.config/spacevim/

# Misc
set -xg TZ "America/Vancouver"
set -xg VISUAL "nvim"
set -xg EDITOR "nvim"
set -xg TERM "xterm"
set -xg CHROME_BIN "chromium"

# Locale
set locale en_US.UTF-8
set -xg LANG $locale
set -xg LANGUAGE $locale
set -xg LC_COLLATE C
set -xg LC_ALL $locale
set -xg LC_CTYPE $locale

# QEMU
set -xg QEMU_AUDIO_DRV pa
set -xg SDL_VIDEO_X11_DGAMOUSE 0

# Wayland
set -xg _JAVA_AWT_WM_NONREPARENTING 1

# Cuda
set -xg CUDA_HOME /opt/cuda

# Fonts
set -xg FONTCONFIG_PATH /etc/fonts
set -xg FONTCONFIG_FILE /etc/fonts/fonts.conf

# Desktop Env
# set -xg XDG_CURRENT_DESKTOP i3
# set -xg XDG_SESSION_DESkTOP i3


# dotfiles

## Installation

Run `curl -L https://raw.githubusercontent.com/yoangau/dotfiles/master/install.sh | bash`

## Macos Manual Post-Install Setup

1. See notion for activation keys/licenses/other keyboard shortcuts
2. Complete yabai/skhd setup:
   1. Disable System Integrity Protection (SIP) if necessary: [Disabling SIP]
   2. https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection'
   3. Install the scripting addition:
      1. https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)#configure-scripting-addition
      2. `sudo yabai --install-sa`
   4. skhd --start-service && skhd --start-service

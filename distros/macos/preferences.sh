# Shell script to set up my dafault Mac preferences

echo "Setting Mac preferences..."


############
### Dock ###
############

# Set the Dock to auto-hide
defaults write com.apple.dock autohide -bool true
# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true


# Set hot corners
  # Corners:
  #  br: bottom-right
  #  bl: bottom-left
  #  tr: top-right
  #  tl: top-left
  # Possible values:
  #  0: no-op
  #  2: Mission Control
  #  3: Show application windows
  #  4: Desktop
  #  5: Start screen saver
  #  6: Disable screen saver
  #  7: Dashboard
  # 10: Put display to sleep
  # 11: Launchpad
  # 12: Notification Center
  # 13: Lock Screen

# Upper right
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
# Upper left
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
# Lower right
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0
# Lower left
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0

##############
### Finder ###
##############

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true
# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Show tab view
defaults write com.apple.finder ShowTabView -bool true
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Default to opening new finder folder in Home folder
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

################
### Keyboard ###
################

# Change modifier keys
# Set Caps Lock to Caps Lock (default)
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-635-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>0</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'

# Set Control Key to Command
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-635-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>1048576</integer><key>HIDKeyboardModifierMappingSrc</key><integer>262144</integer></dict>'

# Set Option Key to Control  
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-635-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>262144</integer><key>HIDKeyboardModifierMappingSrc</key><integer>524288</integer></dict>'

# Set Command Key to Option
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-635-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>524288</integer><key>HIDKeyboardModifierMappingSrc</key><integer>1048576</integer></dict>'

# Set Globe Key to Globe (default)
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-635-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>1073741824</integer><key>HIDKeyboardModifierMappingSrc</key><integer>1073741824</integer></dict>'

# Additional keyboard settings
# Set key repeat rate (from your current setup)
defaults write NSGlobalDomain KeyRepeat -int 5
# Set initial key repeat delay (from your current setup)
defaults write NSGlobalDomain InitialKeyRepeat -int 30
# Keep your current text substitution settings
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
# Disable smart quotes (override if you want to keep them off)
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Interface and appearance
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
defaults write NSGlobalDomain AppleAntiAliasingThreshold -int 4
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool false

# Mouse and trackpad
defaults write NSGlobalDomain "com.apple.mouse.linear" -bool true
defaults write NSGlobalDomain "com.apple.mouse.scaling" -float 0.5
defaults write NSGlobalDomain "com.apple.swipescrolldirection" -bool false  # Disable natural scrolling
defaults write NSGlobalDomain "com.apple.trackpad.forceClick" -bool true

# Sound
defaults write NSGlobalDomain "com.apple.sound.beep.flash" -bool false

# Spring loading
defaults write NSGlobalDomain "com.apple.springing.enabled" -bool true
defaults write NSGlobalDomain "com.apple.springing.delay" -float 0.5

# Language and locale (from your current setup)
defaults write NSGlobalDomain AppleLanguages -array "en-CA"
defaults write NSGlobalDomain AppleLocale -string "en_CA"


##################
### Screenshots ###
##################

# Save screenshots to Desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"
# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true
# Enable screenshot keyboard shortcuts
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 28 '<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>51</integer><integer>20</integer><integer>1179648</integer></array><key>type</key><string>standard</string></dict></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 29 '<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>51</integer><integer>20</integer><integer>1441792</integer></array><key>type</key><string>standard</string></dict></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 30 '<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>52</integer><integer>21</integer><integer>1179648</integer></array><key>type</key><string>standard</string></dict></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 31 '<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>52</integer><integer>21</integer><integer>1441792</integer></array><key>type</key><string>standard</string></dict></dict>'

###############
### iTerm2 ###
###############

# Set default terminal to iTerm2
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.unix-executable";LSHandlerRoleAll="com.googlecode.iterm2";}'

# iTerm2 preferences from actual defaults read output
# Set Neon as default profile
defaults write com.googlecode.iterm2 "Default Bookmark Guid" -string "7E9FBA74-EA64-4961-882C-7F7D94EAA863"

# Appearance preferences
defaults write com.googlecode.iterm2 TabStyleWithAutomaticOption -int 5  # Minimal theme
defaults write com.googlecode.iterm2 TabViewType -int 1  # Tab bar location: Bottom
defaults write com.googlecode.iterm2 ShowTabNumber -bool true
defaults write com.googlecode.iterm2 StretchTabsToFillBar -bool false
defaults write com.googlecode.iterm2 ShowFullScreenTabBar -bool false

# Behavior preferences  
defaults write com.googlecode.iterm2 HideFromDockAndAppSwitcher -bool true
defaults write com.googlecode.iterm2 HideMenuBarInFullscreen -bool false
defaults write com.googlecode.iterm2 HideTab -bool false

# Dimming preferences
defaults write com.googlecode.iterm2 DimmingAmount -float 0.4

# System integration
defaults write com.googlecode.iterm2 AlternateMouseScroll -bool true
defaults write com.googlecode.iterm2 ApplePressAndHoldEnabled -bool false
defaults write com.googlecode.iterm2 AppleScrollAnimationEnabled -bool false

# Updates
defaults write com.googlecode.iterm2 SUEnableAutomaticChecks -bool true
defaults write com.googlecode.iterm2 SUSendProfileInfo -bool false

# Sound and visual indicators
defaults write com.googlecode.iterm2 HapticFeedbackForEsc -bool false
defaults write com.googlecode.iterm2 SoundForEsc -bool false
defaults write com.googlecode.iterm2 VisualIndicatorForEsc -bool false

# History
defaults write com.googlecode.iterm2 PreventEscapeSequenceFromClearingHistory -bool false


##########################
### Kill affected apps ###
##########################


echo "Killing affected applications..."

for app in \
  "cfprefsd" \
  "Dock" \
  "Finder" \
  "SystemUIServer" \
  "iTerm2"
do
  killall "${app}" &> /dev/null
done

echo "Mac preferences set successfully."

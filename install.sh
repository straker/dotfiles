# Install Xcode Command Line Tools
if ! xcode-select --print-path &> /dev/null; then

  # Prompt user to install the XCode Command Line Tools
  xcode-select --install &> /dev/null

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Wait until the XCode Command Line Tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  print_result $? 'Install XCode Command Line Tools'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Point the `xcode-select` developer directory to
  # the appropriate directory from within `Xcode.app`
  # https://github.com/alrra/dotfiles/issues/13

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  print_result $? 'Make "xcode-select" developer directory point to Xcode'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Prompt user to agree to the terms of the Xcode license
  # https://github.com/alrra/dotfiles/issues/10

  sudo xcodebuild -license
  print_result $? 'Agree with the XCode Command Line Tools licence'

fi

# Export script directory to use in child scripts
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install scripts
./install/brew.sh
./install/brew-cask.sh
./install/nvm.sh
./iterm/install.sh
./sublime/install.sh
./bin/install.sh
./shell/install.sh
./osx/defaults.sh

###############################################################################
# Do some clean up work.
###############################################################################

echo "Computer successfully configured!"
echo "Some changes will not take effect until you reboot your machine."

# See if the user wants to reboot.
function reboot() {
  read -p "Do you want to reboot your computer now? (y/N)" choice
  case "$choice" in
    y | Yes | yes ) echo "Yes"; exit;; # If y | yes, reboot
    n | N | No | no) echo "No"; exit;; # If n | no, exit
    * ) echo "Invalid answer. Enter \"y/yes\" or \"N/no\"" && return;;
  esac
}

# Call on the function
if [[ "Yes" == $(reboot) ]]
then
  echo "Rebooting."
  sudo reboot
  exit 0
else
  for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
           "Dock" "Finder" "Mail" "Messages" "Safari" "SystemUIServer" \
           "Terminal" "Twitter" "iCal"; do
    killall "${app}" > /dev/null 2>&1
  done
  exit 1
fi
#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Homebrew Cask                -'
blue '-----------------------------------------------'
blue ''

# # Homebrew Cask
# # Manages the administration of Mac applications distributed as binaries.
# # http://caskroom.io/
# et 'Installing Homebrew Cask'
# brew install caskroom/cask/brew-cask

# Check if there are problems.
brew doctor

# Access alternate versions of programs.
# https://github.com/caskroom/homebrew-versions
brew tap caskroom/versions

# Access fonts.
# https://github.com/caskroom/homebrew-fonts
brew tap caskroom/fonts

# Make sure our Homebrew Cask recipes are updated.
brew cask update

et 'Installing casks...'
brew cask install $(cat cask.formulas | grep -v \#)

# Check if there are problems.
brew cask doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup
brew cask cleanup

# # Activate the Quick Look plugins.
# qlmanage -r


# Upgrading Casks
# https://github.com/caskroom/homebrew-cask/issues/7884#issuecomment-66114740
# brew cask uninstall --force <token> && brew cask install <token>.

#
# Other casks.
#

# https://github.com/ttscoff/reiki/blob/master/reiki.plugin.bash#L298

# https://gist.github.com/brandonb927/3195465

# # Default Folder X
# # Open and Save dialog box enhancer.
# # http://stclairsoft.com/DefaultFolderX/
# #default-folder-x
# # There is a Cask for it but it needs fixing.  The workaround is to install manually.
# # TODO
# # - verify if this is still true

# lighttable

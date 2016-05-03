e ''
e '-----------------------------------------------' $blue
e '-          Xcode Command Line Tools           -' $blue
e '-----------------------------------------------' $blue
e ''

et 'Checking if Xcode is installed...'

# Check if Xcode is installed correctly.
# http://apple.stackexchange.com/a/219508
if ! ( \
  type xcode-select >&- \
  && xpath=$(xcode-select --print-path) \
  && test -d "${xpath}" \
  && test -x "${xpath}" \
) ; then
  # Xcode Command Line Tools
  # CLI utilities for Xcode development.
  # https://developer.apple.com/xcode/
  et 'Installing Xcode command line tools...'
  xcode-select --install
  # sudo xcodebuild -license
fi

# Alcatraz
# The package manager for Xcode.
# http://alcatraz.io/
et 'Installing Alcatraz...'
curl -fsSL https://raw.githubusercontent.com/supermarin/Alcatraz/deploy/Scripts/install.sh | sh


e ''
e '-----------------------------------------------' $blue
e '-                  Homebrew                   -' $blue
e '-----------------------------------------------' $blue
e ''

# Install Homebrew if we need to.
if ! type brew >/dev/null 2>&1 ; then
  if ! type xcode-select >/dev/null 2>&1 ; then
    et 'Installing Xcode command line tools...'
    xcode-select --install
    # sudo xcodebuild -license
  fi

  # Homebrew
  # Package manager for OS X.
  # http://brew.sh
  et 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check if there are problems.
brew doctor

# Update Homebrew recipes.
brew update

# Access more recent versions of some programs that come with OS X.
brew tap homebrew/dupes

# # Access PHP-related formulas.
# brew tap homebrew/homebrew-php

et 'Installing formulas...'
brew install $(cat brews/formulas.brew | grep -v \#)

# Use an updated Z shell as the default shell.
# http://zsh.sourceforge.net/
# http://johndjameson.com/blog/updating-your-shell-with-homebrew/
# http://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version/17649823#17649823
brew install zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

# http://blog.mixu.net/2012/04/06/git-tips-and-tricks/
git config --global color.ui true
git config --global push.default current
# git config branch.autosetuprebase always
# git difftool -t <tool>
# git mergetool -t <tool>

# ------------------------------------------------------------------------------

# # rbenv
# # A Ruby version manager.
# # http://rbenv.org/
# brew install rbenv

# # Install a newer version of Ruby.
# rbenv install 2.3.0
# rbenv global 2.3.0
# rbenv rehash

# ------------------------------------------------------------------------------

# # Node Version Manager
# # A manager for handling different versions of Node.js.
# # https://github.com/creationix/nvm
# brew install nvm

# # Install Node.js.
# nvm install stable

# # nvm alias default stable

# # Bower
# # Package manager for the web projects.
# # http://bower.io/
# npm install --global bower

# # deps-ok
# # Fast checking of top level dependencies based on version numbers.
# # https://www.npmjs.com/package/deps-ok
# npm install --global deps-ok

# # Gulp
# # The streaming build system.
# # http://gulpjs.com/
# npm install --global gulp

# # npm-check-updates
# # Finds newer versions of dependencies than what your package.json allows.
# # https://www.npmjs.com/package/npm-check-updates
# npm install --global npm-check-updates

# # blacklisted-gulp
# # Searches for blacklisted Gulp plugins in your project.
# # https://github.com/ernestoalejo/blacklisted-gulp
# # https://www.npmjs.com/package/blacklisted-gulp
# npm install --global blacklisted-gulp

# # Slush
# # The streaming scaffolding system.
# # http://slushjs.github.io/#/
# npm install --global slush

# ------------------------------------------------------------------------------

# Configure sift.
sift --color --group --line-number --stats --write-config

# ------------------------------------------------------------------------------

# damn-weather
# Checks the weather in your terminal.
# https://github.com/mrowa44/damn-weather
# gem install --upgrade damn-weather
gem install damn-weather

# synx
# Reorganizes your Xcode project folder to match your Xcode groups.
# https://github.com/venmo/synx
# gem install --upgrade synx
gem install synx

# # xcpretty
# # Output formatter for Xcode.
# # https://github.com/supermarin/xcpretty
# # gem install --upgrade xcpretty
# gem install xcpretty

# ------------------------------------------------------------------------------

# Python 2
# A programming language.
# https://www.python.org/
pyenv install 2.7.11
pyenv global 2.7.11

# eg
# Useful examples at the command line.
# https://github.com/srsudar/eg
pip install --upgrade eg

# Ohmu
# View disk space usage in your terminal.
# https://github.com/paul-nechifor/ohmu
pip install --upgrade ohmu

# pip-tools
# A set of command line tools to help you keep your pip-based packages fresh,
# even when you've pinned them.
# https://github.com/nvie/pip-tools
pip install --upgrade pip-tools

# ------------------------------------------------------------------------------

# cd ~
# yadm clone https://github.com/icylace/dotfiles

# ------------------------------------------------------------------------------

#
# Other formulas.
#

# duti .duti

# # GNU Aspell
# # Spell checker.
# # http://aspell.net/
# aspell

# # Composer
# # Dependency manager for PHP.
# # http://getcomposer.org/
# #
# # https://github.com/composer/composer/pull/3523#issuecomment-66768640
# # https://github.com/composer/composer/issues/3255#issuecomment-60742259
# #
# composer

# # Drush
# # Shell interface for Drupal.
# # https://github.com/drush-ops/drush
# drush

# # FFmpeg
# # Audio and video converter, recorder, and streamer.
# # http://ffmpeg.org/
# ffmpeg

# # id3tool
# # ID3 tag editor.
# # http://nekohako.xware.cx/id3tool/
# id3tool

# # Pipe Viewer
# # Progress monitor for data through a pipeline.
# # http://ivarch.com/programs/pv
# pv

# # spark
# # Data visualizer using sparklines.
# # http://zachholman.com/spark/
# spark

# # terminal-notifier
# # Send Mac OS X User Notifications.
# # https://github.com/alloy/terminal-notifier
# terminal-notifier

# # Generic Colouriser
# # Colorizes output of commands and log files.
# # https://github.com/garabik/grc
# grc

# TODO
# - stick with Synergy Pro, right ?
#
# # Synergy
# # Keyboard and mouse switcher for multiple computers.
# # http://synergy-project.org/
# brew cask install synergy


# Check if there are problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup

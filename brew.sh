e ''
e '-----------------------------------------------' $blue
e '-                  Homebrew                   -' $blue
e '-----------------------------------------------' $blue
e ''

# Install Homebrew if we need to.
if [ ! (type brew >/dev/null 2>&1) ]; then
  if [ ! (type xcode-select >/dev/null 2>&1) ]; then
    et 'Installing Xcode command line tools...'
    xcode-select --install
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

# Access PHP-related formulas.
brew tap homebrew/homebrew-php

et 'Installing formulas...'
brew install $(cat brews/formulas.brew | grep -v \#)

# Use an updated Z shell as the default shell.
# http://zsh.sourceforge.net/
# http://johndjameson.com/blog/updating-your-shell-with-homebrew/
# http://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version/17649823#17649823
brew install zsh
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s /usr/local/bin/zsh

# Check if there are problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup

# http://blog.mixu.net/2012/04/06/git-tips-and-tricks/
git config --global color.ui true
git config --global push.default current
# git config branch.autosetuprebase always
# git difftool -t <tool>
# git mergetool -t <tool>

# Install a newer version of Ruby.
rbenv install 2.2.3
rbenv global 2.2.3
rbenv rehash

#
# Other formulas.
#

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
# # http://korpus.juls.savba.sk/~garabik/software/grc.html
# grc

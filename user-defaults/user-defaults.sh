#!/usr/bin/env bash

source ../init.sh

blue '
+-------------------------------------------------------------------------------
:  Set macOS defaults and macOS application defaults.
+ - - - - - - - - - - - - - - - - - - - -
'

# Use `defaults delete {domain} {key}` to undo settings. For example, using:
# `defaults write com.apple.dock expose-animation-duration -float 0.1` can
# be using `defaults delete com.apple.dock expose-animation-duration`.
#
# Heavy influence and much copying from:
# - http://osxdaily.com/2010/02/15/disable-the-crash-reporter-dialog-in-mac-os-x/
# - http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/#comment-435634
# - https://gist.github.com/nicerobot/1193218
# - https://gist.github.com/zenspider/8ee55e7c00b9201dd84f
# - https://github.com/divio/osx-bootstrap/blob/master/core/defaults.sh
# - https://github.com/eolamey/dotfiles/blob/master/misc/osx-defaults
# - https://github.com/mathiasbynens/dotfiles/pull/306/files
# - https://github.com/mikker/dotfiles/blob/master/osx
# - https://github.com/RStankov/config_files/blob/master/dot/osx
# - https://github.com/trusche/dotfiles/blob/master/osx
# - https://github.com/virtualswede/osx-bootstrap
# - https://github.com/ymendel/dotfiles/tree/master/osx
# - https://jasahackintosh.wordpress.com/2014/09/04/tweak-os-x-from-command-terminal/
# - https://lifehacker.com/how-to-make-your-own-bulk-app-installer-for-os-x-1586252163
# - https://macguide.org/
# - https://mths.be/osx
# - https://wp.secretnest.info/archives/3129
# - https://www.amsys.co.uk/how-to-enable-mission-control-to-display-full-size-previews/#.VKextGTF_yU
# - https://www.tekrevue.com/tip/the-complete-guide-to-customizing-mac-os-xs-dock-with-terminal/

# TODO: consider these
# https://macguide.org/#allow-apps-downloaded-from-anywhere


# ------------------------------------------------------------------------------
#  macOS settings.
# ------------------------------------------------------------------------------

if ! we_have defaults ; then
  red 'Error: `defaults` command is missing!'
  return 1
fi

for f in ./macos/*.sh ; do
  source "$f"
done

for f in ./apps/*.sh ; do
  source "$f"
done

green 'macOS defaults written. Some of these changes require a logout/restart to take effect.'




# put 'Display the location path of current wallpaper.'
# write_defaults com.apple.dock desktop-picture-show-debug-text true

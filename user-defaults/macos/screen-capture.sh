#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Screen Capture
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.screencapture'

put 'Save screenshots into the downloads folder to keep the desktop uncluttered.'
use location "$HOME/Downloads"

put 'Set the screenshot base name.'
use name 'screen'

put 'Use JPEG instead of PNG for smaller file sizes.'
use type 'jpg'
# Other options: BMP, GIF, JPG, PDF, TIFF

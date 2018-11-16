#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Screen Capture
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.screencapture'

put 'Disable the shadow in screenshots.'
use disable-shadow true

put 'Save screenshots into the downloads folder to keep the desktop uncluttered.'
use location "$HOME/Downloads"

put 'Set the screenshot base name.'
use name 'screen'

put 'Use JPEG instead of PNG for smaller file sizes.'
use type 'jpg'
# Other options: BMP, GIF, JPG, PDF, TIFF

# # Restart SystemUIServer to apply the settings.
# killall SystemUIServer

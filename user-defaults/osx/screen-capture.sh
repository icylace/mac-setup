#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Screen Capture
+ - - - - - - - - - - - - - - - - - - - -
'

alias +='write_defaults com.apple.screencapture'

t 'Disable the shadow in screenshots.'
+ disable-shadow true

t 'Save screenshots into the downloads folder to keep the desktop uncluttered.'
+ location "$HOME/Downloads"

t 'Set the screenshot base name.'
+ name 'screen'

t 'Use JPEG instead of PNG for smaller file sizes.'
+ type 'jpg'
# Other options: BMP, GIF, JPG, PDF, TIFF

# t 'Restart SystemUIServer to apply the settings.'
# killall SystemUIServer

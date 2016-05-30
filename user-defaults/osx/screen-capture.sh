#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-               Screen Capture                -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.screencapture'

t 'Disable the shadow in screenshots.'
d disable-shadow true

t 'Save screenshots into the downloads folder to keep the desktop uncluttered.'
d location "$HOME/Downloads"

t 'Set the screenshot base name.'
d name 'screen'

t 'Use JPEG instead of PNG for smaller file sizes.'
d type 'jpg'
# Other options: BMP, GIF, JPG, PDF, TIFF

# t 'Restart SystemUIServer to apply the settings.'
# killall SystemUIServer

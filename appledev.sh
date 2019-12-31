#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Apple development stuff.
+ - - - - - - - - - - - - - - - - - - - -
'

# Xcode
# Application development system from Apple.
# https://developer.apple.com/xcode/
mas install 497799835

# Chisel
# Chisel is a collection of LLDB commands to assist debugging iOS apps.
# https://github.com/facebook/chisel
brew install chisel

# xctool
# An extension for Apple's xcodebuild that makes it easier to test iOS and macOS apps.
# https://github.com/facebook/xctool
brew install xctool

# SwiftLint
# A tool to enforce Swift style and conventions.
# https://github.com/realm/SwiftLint
brew install swiftlint

# Tailor
# Static analyzer and linter for Swift.
# https://tailor.sh/
# - First, install Java.
brew install tailor

# # CocoaPods
# # CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects.
# # https://cocoapods.org/
# sudo gem install cocoapods

# # synx
# # A command-line tool that reorganizes your Xcode project folder to match your Xcode groups
# # https://github.com/venmo/synx
# gem install synx

# # xcpretty
# # Flexible and fast xcodebuild formatter
# # https://github.com/supermarin/xcpretty
# gem install xcpretty

# ------------------------------------------------------------------------------

# # swiftenv: Swift Version Manager
# # swiftenv allows you to easily install, and switch between
# # multiple versions of Swift.
# # https://swiftenv.fuller.li/en/latest/
# brew install kylef/formulae/swiftenv
#
# echo 'if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi' >> "$HOME/.profile"

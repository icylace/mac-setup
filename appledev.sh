#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Apple development stuff.
# ------------------------------------------------------------------------------

# Xcode
# Application development system from Apple.
# https://developer.apple.com/xcode/
mas install 497799835

# ------------------------------------------------------------------------------

# Carthage
# A decentralized dependency manager for Cocoa.
# https://github.com/Carthage/Carthage
brew install carthage

# Chisel
# A collection of LLDB commands to assist in the debugging of iOS apps.
# https://github.com/facebook/chisel
brew install chisel

# SwiftLint
# A linter for Swift code.
# https://github.com/realm/SwiftLint
brew install swiftlint

# # Tailor
# # Static analyzer and linter for Swift.
# # https://tailor.sh/
# # - First, install Java.
# brew install tailor

# xctool
# Alternative Xcode build tool.
# https://github.com/facebook/xctool
brew install xctool

# ------------------------------------------------------------------------------

# # CocoaPods
# # Dependency manager for Cocoa projects.
# # http://cocoapods.org/
# sudo gem install cocoapods

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

# Alcatraz
# Package manager for Xcode.
# http://alcatraz.io/
et 'Installing Alcatraz...'
curl -fsSL https://raw.githubusercontent.com/supermarin/Alcatraz/deploy/Scripts/install.sh | sh
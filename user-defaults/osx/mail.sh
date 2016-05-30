#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                    Mail                     -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.mail'

t 'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.'
d AddressesIncludeNameOnPasteboard false

# t 'Disable inline attachments (just show the icons).'
# d DisableInlineAttachmentViewing true

# t 'Disable send and reply animations.'
# d DisableReplyAnimations true
# d DisableSendAnimations true

# t 'Display emails in threaded mode, sorted by date (oldest at the top).'
# d DraftsViewerAttributes -dict-add 'DisplayInThreadedMode' 'yes'
# d DraftsViewerAttributes -dict-add 'SortedDescending' 'yes'
# d DraftsViewerAttributes -dict-add 'SortOrder' 'received-date'

# t 'Add the keyboard shortcut ⌘ + Enter to send an email.'
# d NSUserKeyEquivalents -dict-add 'Send' '@\\U21a9'

# t 'Disable automatic spell checking.'
# d SpellCheckingBehavior 'NoSpellCheckingEnabled'

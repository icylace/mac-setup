#!/usr/bin/env bash

blue '
-----------------------------------------------
-                    Mail                     -
-----------------------------------------------
'

alias +='write_defaults com.apple.mail'

t 'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.'
+ AddressesIncludeNameOnPasteboard false

# t 'Disable inline attachments (just show the icons).'
# + DisableInlineAttachmentViewing true

# t 'Disable send and reply animations.'
# + DisableReplyAnimations true
# + DisableSendAnimations true

# t 'Display emails in threaded mode, sorted by date (oldest at the top).'
# + DraftsViewerAttributes -dict-add 'DisplayInThreadedMode' 'yes'
# + DraftsViewerAttributes -dict-add 'SortedDescending' 'yes'
# + DraftsViewerAttributes -dict-add 'SortOrder' 'received-date'

# t 'Add the keyboard shortcut ⌘ + Enter to send an email.'
# + NSUserKeyEquivalents -dict-add 'Send' '@\\U21a9'

# t 'Disable automatic spell checking.'
# + SpellCheckingBehavior 'NoSpellCheckingEnabled'

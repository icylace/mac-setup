#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Mail
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.mail'

put 'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.'
use AddressesIncludeNameOnPasteboard false

# put 'Disable inline attachments (just show the icons).'
# use DisableInlineAttachmentViewing true

# put 'Disable send and reply animations.'
# use DisableReplyAnimations true
# use DisableSendAnimations true

# put 'Display emails in threaded mode, sorted by date (oldest at the top).'
# use DraftsViewerAttributes -dict-add 'DisplayInThreadedMode' 'yes'
# use DraftsViewerAttributes -dict-add 'SortedDescending' 'yes'
# use DraftsViewerAttributes -dict-add 'SortOrder' 'received-date'

# put 'Add the keyboard shortcut ⌘ + Enter to send an email.'
# use NSUserKeyEquivalents -dict-add 'Send' '@\\U21a9'

# put 'Disable automatic spell checking.'
# use SpellCheckingBehavior 'NoSpellCheckingEnabled'

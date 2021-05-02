#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Git
+ - - - - - - - - - - - - - - - - - - - -
'

# diff-so-fancy
# Good-lookin' diffs. Actually… nah… The best-lookin' diffs. 🎉
# https://github.com/so-fancy/diff-so-fancy
brew install diff-so-fancy

# Git
# Distributed revision control system
# https://git-scm.com/
brew install git

# git-cal
# GitHub-like contributions calendar but on the command-line
# https://github.com/k4rthik/git-cal
brew install git-cal

# delta
# A syntax-highlighter for git and diff output
# https://github.com/dandavison/delta
brew install git-delta

# Git Extras
# Small git utilities
# https://github.com/tj/git-extras
brew install git-extras

# git-filter-repo
# Quickly rewrite git repository history (filter-branch replacement)
# https://github.com/newren/git-filter-repo
brew install git-filter-repo

# gitHUD
# A heads-up display for Git.
# https://github.com/gbataille/gitHUD
brew tap gbataille/homebrew-gba && brew install githud

# git-secret
# Bash-tool to store the private data inside a git repo
# https://git-secret.io/
brew install git-secret

# hub
# Add GitHub support to git on the command-line
# https://hub.github.com/
brew install hub

# scmpuff
# Makes working with git from the command line quicker by substituting numeric
# shortcuts for files.
# https://mroth.github.io/scmpuff/
brew install scmpuff

# Tig
# Text-mode interface for Git.
# https://jonas.github.io/tig/
brew install tig

# ------------------------------------------------------------------------------

setup_git() {
  # https://help.github.com/articles/ignoring-files/#create-a-global-gitignore
  git config --global core.excludesfile "$HOME/.gitignore_global"

  # https://stackoverflow.com/a/40821931
  git config --global core.autocrlf input

  # https://help.github.com/articles/caching-your-github-password-in-git/
  git config --global credential.helper osxkeychain

  # Shows merge-conflicting commits alongside their common root commit.
  # https://git-scm.com/docs/git-config#Documentation/git-config.txt-mergeconflictStyle
  # https://youtu.be/jw8yK5JV0xw?t=1072
  git config --global merge.conflictStyle diff3

  # http://blog.mixu.net/2012/04/06/git-tips-and-tricks/
  git config --global push.default current

  # https://youtu.be/jw8yK5JV0xw?t=1317
  git config --global push.followTags true

  # Stashes working tree changes before rebasing and then unstahses them after
  # the rebase is done.
  # https://git-scm.com/docs/git-config#Documentation/git-config.txt-rebaseautoStash
  # https://youtu.be/jw8yK5JV0xw?t=2438
  git config --global rebase.autoStash true

  # During a rebase rearranges commits so that related commits marked for
  # squashing occur in sequence.
  # https://git-scm.com/docs/git-config#Documentation/git-config.txt-rebaseautoSquash
  # https://git-scm.com/docs/git-rebase#Documentation/git-rebase.txt---autosquash
  # https://youtu.be/jw8yK5JV0xw?t=2477
  git config --global rebase.autoSquash true

  # # Based on:
  # # https://github.com/so-fancy/diff-so-fancy#improved-colors-for-the-highlighted-bits
  # git config --global color.ui true
  # git config --global color.diff-highlight.newHighlight "green bold 22"
  # git config --global color.diff-highlight.newNormal "green bold"
  # git config --global color.diff-highlight.oldHighlight "red bold 52"
  # git config --global color.diff-highlight.oldNormal "red bold"
  # git config --global color.diff.commit "227 bold"
  # git config --global color.diff.context "normal dim"
  # git config --global color.diff.frag "magenta bold"
  # git config --global color.diff.meta "227"
  # git config --global color.diff.new "green bold"
  # git config --global color.diff.old "red bold"
  # git config --global color.diff.plain "bold black"
  # git config --global color.diff.whitespace "red reverse"

  # "git diff - show me line ending changes?"
  # https://stackoverflow.com/a/36604948

  # # https://git-scm.com/docs/git-config#git-config-diffwsErrorHighlight
  # git config --global diff.wsErrorHighlight "all"

  # https://git-scm.com/docs/git-add#git-add-patch
  git config --global interactive.singleKey true

  # https://github.com/dandavison/delta#installation
  git config --global core.pager "delta --theme='1337'"

  # # Based on:
  # # https://github.com/so-fancy/diff-so-fancy#usage
  # # https://github.com/so-fancy/diff-so-fancy/blob/master/pro-tips.md#moving-around-in-the-diff
  # # https://github.com/so-fancy/diff-so-fancy/issues/173#issuecomment-226649546
  # git config --global core.pager "less --no-init --quit-if-one-screen --RAW-CONTROL-CHARS --tabs=4"
  # git config --global pager.diff "diff-so-fancy | less --no-init --pattern '^(Date|added|deleted|modified): ' --quit-if-one-screen --RAW-CONTROL-CHARS --tabs=4"

  # git config --global diff-so-fancy.useunicoderuler true

  # TODO:
  # # Enter unique info.
  # git config --global --edit
  # # git config --global user.name "TBD"
  # # git config --global user.email "TBD"

  # TODO: do we need to change anything with regards to this ?
  # https://github.com/so-fancy/diff-so-fancy/issues/296
  # git config --global interactive.diffFilter "diff-so-fancy --patch-mode"
}

setup_git

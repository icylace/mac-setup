#!/usr/bin/env bash

# twa
# A tiny web auditor with strong opinions.
# https://github.com/trailofbits/twa
# TODO: set things up so we don't need to symlink into `/tmp`
git clone https://github.com/trailofbits/twa.git /tmp/twa
ln -s /tmp/twa/twa /usr/local/bin/twa
ln -s /tmp/twa/tscore /usr/local/bin/tscore

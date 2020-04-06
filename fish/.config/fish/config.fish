set fish_greeting "¯\_(ツ)_/¯"

set -x DEBFULLNAME "Nick Huber"
set -x DEBEMAIL "nick.huber@multapplied.net"

set -U fish_user_paths /home/nick/.local/bin /home/nick/bin

export EDITOR=nvim
export NETRC=~/.netrc

umask 0002

# Support wide unicode characters
set -g fish_emoji_width 2

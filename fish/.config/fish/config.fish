set fish_greeting "¯\_(ツ)_/¯"

set -x DEBFULLNAME "Nick Huber"
set -x DEBEMAIL "nick.huber@multapplied.net"

set -U fish_user_paths /home/nick/.local/bin /home/nick/bin $fish_user_paths

export EDITOR=nvim
export NETRC=/home/nick/.netrc

umask 0002

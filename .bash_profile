##
# Your previous /Users/morganwildermuth/.bash_profile file was backed up as /Users/morganwildermuth/.bash_profile.macports-saved_2016-11-21_at_14:03:12
##

# MacPorts Installer addition on 2016-11-21_at_14:03:12: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export EDITOR=vim


# command line details concerning git and helpful coloring
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
. /opt/local/etc/profile.d/bash_completion.sh
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"

export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'

# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

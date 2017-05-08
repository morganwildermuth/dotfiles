 # MacPorts Installer addition on 2016-11-21_at_14:03:12: adding an appropriate PATH variable for use with MacPorts.

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export EDITOR=/usr/bin/vim

export PATH="/Users/morganwildermuth/Qt5.5.1/5.5/clang_64/bin:$PATH"
export PATH="/Users/morganwildermuth/packer:$PATH"

#secrets
export AWS_ACCESS_KEY_ID_PACKER=""
export AWS_SECRET_ACCESS_KEY_ID_PACKER=""
export AWS_REGION=""


# command line details concerning git and helpful coloring
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
. /opt/local/etc/profile.d/bash_completion.sh
fi

# command line completion for git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"

export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'

# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

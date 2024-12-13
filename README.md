# dotfiles

Setting up a new Mac:

Install 
* download git prompt `curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh`
* bash profile dotfile at ~/.bash_profile
* source `~/.bash_profile` from shell
* vim dotfile at ~/.vimrc
* run `:source ~/.vimrc` from vim
* tmux dotfile at vim ~/.tmux.conf

Run 
* `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* `vim +PluginInstall +qall`
* You may need to run `tmux kill-server` but if you get the result `error connecting to /private/tmp/tmux-501/default` then it means there is no server to kill. Continue on.

Change key bindings
* System Settings -> Keyboard -> Keyboard Shortcuts -> Modifier Keys: change CapsLock to Ctrl

Using a specific coding language version
* use rbenv or pyenv, don't try to manage it yourself. Gets nasty quick.
* If you're using rbenv and zshrc, then make sure you also find the correct pip path (`which pip3`) and add `alias pip=/usr/local/bin/pip3` to ~/.zshrc
  
Accessing iCloud Files between Macs
* `vim ~/Library/Mobile\ Documents/com~apple~CloudDocs/Desktop`

NPM Set-up for base JS app
* https://webpack.js.org/guides/getting-started/

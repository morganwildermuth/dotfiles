# dotfiles

Setting up a new Mac:

Install 
* download git prompt `curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh`
* bash profile dotfile at ~/.bash_profile
* vim dotfile at ~/.vimrc
* tmux dotfile at vim ~/.tmux.conf
* run `source <file_location>` for all modified files here

Run 
* `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* `vim +PluginInstall +qall`
* You may need to run `tmux kill-server` but if you get the result `error connecting to /private/tmp/tmux-501/default` then it means there is no server to kill. Continue on.

Change key bindings
* System Preferences > Keyboard > Keyboard, click the Modifier Keys button and change CapsLock to Ctrl

Accessing iCloud Files between Macs
* `vim ~/Library/Mobile\ Documents/com~apple~CloudDocs/Desktop`

NPM Set-up for base JS app
* https://webpack.js.org/guides/getting-started/

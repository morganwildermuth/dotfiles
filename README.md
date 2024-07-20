# dotfiles

Setting up a new Mac:

Install 
* vim dotfile at ~/.vimrc
* bash profile dotfile at ~/.bash_profile
* tmux dotfile at vim ~/.tmux.conf

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

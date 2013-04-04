My vimfiles (abrutus)

to install 
```bash
cd ~
git clone http://github.com/abrutus/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
# to update golang plugin from submodule
ditto -V goplugins/ .
```

I remapped the leader key to ,

Modules:

+ CtrlP
+ Nerdtree
+ clojure syntax
+ scala syntax

Original idea from [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)


Custom Binaries:

Didn't like the Ack plugin so I wrote a wrapper for grep. To run, make sure ~/.vim/bin is in your $PATH and execute `:gg SEARCH_TERM`

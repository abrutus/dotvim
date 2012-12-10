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

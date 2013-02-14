" "Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on
" "Want a different map leader than \
let mapleader=","
"
" "Set the color scheme. Change this to your preference.
" "Here's 100 to choose from:
" http://www.vim.org/scripts/script.php?script_id=625
colorscheme molokai
set t_Co=256
" "Tab stuff
set shiftwidth=4
set tabstop=4
" "Show line numbers
set number
" "Prefer relative line numbering?
set relativenumber
"
" "Indent stuff
set smartindent
set autoindent
" Set incremental searching
set incsearch
" "Highlight searching
set hlsearch
" " case insensitive search
set ignorecase
set smartcase
"Map escape key to jj -- much faster
"imap jj <esc>
"
""Delete all buffers (via Derek Wyatt)
nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<cr>

"Bubble single lines (kicks butt)
""http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp

"" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
if has("autocmd")
	augroup myvimrchooks
		au!
		autocmd bufwritepost .vimrc source ~/.vimrc
	augroup END
endif

" "------------------------"
" "NERDTREE PLUGIN SETTINGS
" "------------------------"
" "Shortcut for NERDTreeToggle
nmap <leader>nt :NERDTreeToggle <CR>
" "Show hidden files in NerdTree
let NERDTreeShowHidden=1
	      "
" Pathogen Plugin
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*pyc     " MacOSX/Linux
" crlp markers
let g:ctrlp_root_markers = ['.project', '.git']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" Relative line numbers get disabled when on insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
" Disable auto comment for //
au FileType php setlocal comments-=:// comments+=f://
" Function List with ,fl
map <leader>fl :Flisttoggle<CR>
" ESC to clear search results
nnoremap <Esc><Esc> :noh<CR><Esc>
" Insta blame!!
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
" Removes trailing whitespace with  ,nw
nmap <leader>nw :%s/\s\+$//e<CR>
" Scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
" newline end of file remove
set binary
set noeol
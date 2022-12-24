" Color theme
set t_Co=256
set term=screen-256color
set cursorline
colorscheme onehalfdark
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
syntax on

:set nu
:set ai
:set cursorline
:set incsearch
:set expandtab
:set tabstop=4
:set mouse=a
:set hlsearch


" Change leader to space
let mapleader = " "
nnoremap <SPACE> <Nop>

" Hot key for insert mode
:inoremap ( ()<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko
:inoremap " ""<Esc>i
:inoremap [ []<Esc>i
:inoremap ' ''<Esc>i
nmap <leader>sh :set hlsearch!<CR>
function! ToggleMouse()
    if &mouse == ''
        let &mouse='a'
    else
        let &mouse=''
    endif
endfunction
nnoremap <leader>sm :call ToggleMouse()<cr>
" Buffer switch
:nmap <TAB> :bnext<CR>
:nmap <S-TAB> :bprev<CR>
:nmap <leader>sb :buffers<CR>
" close buffer
:nmap <leader>bc :bd<CR>

" window switch
:nmap <leader>h :wincmd h<CR>
:nmap <leader>l :wincmd l<CR>
:nmap <leader>j :wincmd j<CR>
:nmap <leader>k :wincmd k<CR>

" Color configuration
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

au BufNewFile,BufRead * if &syntax == '' | set syntax=C | endif

" include cscope configuration
source ~/env_setting/config/.cscope_config


" Plugins
:set rtp+=~/.vim/bundle/nerdtree
:source ~/.vim/bundle/vim-buftabline/plugin/buftabline.vim

" NERDTree Setting

" Opens (or reopens) the NERDTree if it is not currently visible;
" otherwise, the cursor is moved to the already-open NERDTree.
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" Without the optional argument, find and reveal the file for the active
" buffer in the NERDTree window.  With the <path> argument, find and
" reveal the specified path.
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

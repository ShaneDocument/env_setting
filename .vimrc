syntax on
:set nu
:set ai
:set cursorline
:set incsearch
:set expandtab
:set tabstop=4
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
:nmap sb :buffers<CR>

" Color configuration
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

au BufNewFile,BufRead * if &syntax == '' | set syntax=C | endif

" include cscope configuration
source ~/env_setting/config/.cscope_config


" Plugins
:set rtp+=~/.vim/bundle/nerdtree
:source ~/.vim/bundle/vim-buftabline/plugin/buftabline.vim

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

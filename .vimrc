filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set hlsearch
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'sickill/vim-monokai'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()

" shows buffers at top of file
let g:airline#extensions#tabline#enabled = 1

"Silver Searcher
if executable('ag')
    " Use ag over grep
       set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects
    " .gitignore
       let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

      " ag is fast enough that CtrlP doesn't need to cache
       let g:ctrlp_use_caching = 0
endif

syntax enable

" exit insert mode
inoremap jk <Esc>

set relativenumber
set nocompatible
set wrap
" use spaces instead of tab
set expandtab
" be smart when using tabs
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set ai
set si
" makes it work in tmux with the correct background color
set t_ut=

set backspace=indent,eol,start

filetype plugin indent on

set ruler

set noswapfile
"can switch between open windows in reasonable ways
noremap <c-h> <c-w>h
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-l> <c-w>l
",p takes you to previous buffer
noremap ,p <C-^>
"shortcut for highlighting text in between brackets, braces, what-have-you
"noremap % v%

" leader set to ','
let mapleader = ","
" leader n so ,n toggles nerd tree
nmap <silent> <leader>n :NERDTreeToggle<CR>

nnoremap <leader>ag "zyiw:exe "Ag! ".@z.""<CR>"
nnoremap <leader>bv :e ~/.vimrc<CR>
nnoremap <leader>vr :source ~/.vimrc<CR>

colorscheme monokai
set hlsearch
highlight Search ctermbg=Yellow ctermfg=Black

""" Destroy all software's testing stuff
function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo
    exec ":!rspec " . a:filename . " --color"
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_spec_file = match(expand("%"), '_spec.rb$') != -1
    if in_spec_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction

" Run this file
 map <leader>t :call RunTestFile()<cr>

" Run only the example under the cursor
 map <leader>T :call RunNearestTest()<cr>

" Run all test files
 map <leader>a :call RunTests('spec')<cr>

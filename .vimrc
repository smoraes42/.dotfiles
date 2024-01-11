" Enable mouse
set mouse=a

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
"set shiftwidth=2

" Set tab width to 4 columns.
"set tabstop=2

" Use space characters instead of tabs.
"set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

colorscheme industry
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_transparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Disable swapfile creation
set noswapfile

" Change working directory to the currently opened file's
set autochdir

" Set ruler counter
set ruler

" Set color column on line 81

set colorcolumn=81

"" MAPPINGS

inoremap jj <esc>

let mapleader = "\<space>"
" Ex
nnoremap <Leader>-- :Ex<CR>

" Split the buffer horizontally
nnoremap <Leader>bs :sbuffer<CR>

" Split the buffer vertictally
nnoremap <Leader>bv :vsplit<CR>

" Close buffers
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q!<CR>

nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>tl :tabNext<CR>
nnoremap <Leader>th :tabprevious<CR>

" No highlight search
:noremap <Leader>nhs  :nohls<CR>

" Split the buffer allowing input ?
nnoremap <Leader>bbv :ls<CR>:vertical sbuffer<Space>  " 2
nnoremap <Leader>bbs :ls<CR>:sbuffer<Space>           " 1
"vnoremap <Leader>cpy :'<,'>%w !pbcopy
vnoremap <Leader>y "+y<Esc>

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tribela/vim-transparent'

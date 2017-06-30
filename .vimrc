set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fatih/vim-go'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'dougireton/vim-chef'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'moll/vim-node'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

set rtp+=/usr/share/vim/site

syntax enable
set background=dark
let g:solarized_termtrans = 1
silent! colorscheme solarized

set noswapfile

set ruler
set cmdheight=2
set ignorecase
set smartcase
set showmatch
set mat=2

set noerrorbells
set novisualbell

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set laststatus=2
set encoding=utf-8

"NERDTree Config
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

"Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if executable('node_modules/.bin/eslint')
  let g:syntastic_javascript_checkers = ['eslint']
  let b:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
endif

let g:syntastic_ruby_checkers = ['rubocop']

"IndentGuide Configuration
let g:indent_guides_guide_size=1

"Vim-Go Settings
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "10s"
let g:go_list_type = "quickfix"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Force markdown for .md filetype
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"Tagbar F9 map
nnoremap <silent> <F9> :TagbarToggle<CR>

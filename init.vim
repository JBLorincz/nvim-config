:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'jacoborus/tender.vim'
Plug 'vim-ruby/vim-ruby' " For Facts, Ruby functions, and custom providers
Plug 'projekt0n/caret.nvim'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'Mofiqul/vscode.nvim'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/farmergreg/vim-lastplace'
Plug 'voldikss/vim-floaterm'

set encoding=UTF-8

call plug#end()



nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

nnoremap <C-m> :Files<CR>
":set completeopt-=preview " For No Previews

" If you have vim >=8.0 or Neovim >= 0.1.5
set termguicolors

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" show hidden files in nerdtree
let NERDTreeShowHidden=1

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins

source ~/.config/nvim/airline.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/time_shift.vim
source ~/.config/nvim/float_term.vim

set updatetime=300

autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy

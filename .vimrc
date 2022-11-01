call plug#begin()
 Plug 'preservim/nerdtree'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'bagrat/vim-buffet'
 Plug 'tpope/vim-fugitive'
 Plug 'StanAngeloff/php.vim'
 Plug 'stephpy/vim-php-cs-fixer'
 Plug 'ryanoasis/vim-devicons'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-N> :NERDTreeToggle<CR>
noremap <leader>o :NERDTreeFind<CR>

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

let $FZF_DEFAULT_COMMAND = 'find .'
nnoremap <leader>f :Files<CR>
nnoremap <leader>a :Ag<CR>

set encoding=UTF-8

set noswapfile

set number

set tabstop=4

set shiftwidth=4

set expandtab

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" gd to go to definition
nmap <silent> gd <Plug>(coc-definition)
" gr to go to reference
nmap <silent> gr <Plug>(coc-references)

"php-cs-fixer config
let g:php_cs_fixer_path = "~/.vim/php-cs-fixer.phar"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_php_path = "/usr/bin/php7"

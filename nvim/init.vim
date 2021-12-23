call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'editorconfig/editorconfig-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'tpope/vim-eunuch'

Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'

Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }

Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-vinegar'
Plug 'ibhagwan/fzf-lua'
Plug 'vijaymarupudi/nvim-fzf'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

nnoremap <c-P> <cmd>lua require('fzf-lua').files()<CR>

set completeopt=menu,noinsert
set signcolumn=number
set updatetime=300
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

set nobackup
set inccommand=nosplit

nmap <C-t> :tab split <CR>
nmap <Leader>gd <Plug>(coc-definition)


" ui options
colorscheme onedark
set cursorline
set ruler
set number
let g:airline_theme='minimalist'

filetype plugin indent on
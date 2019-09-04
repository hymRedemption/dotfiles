set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" auto complete
Plugin 'valloric/youcompleteme'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'

Plugin 'tpope/vim-surround'

" ctrlp
Plugin 'kien/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher'

" colorschemes
Plugin 'chriskempson/base16-vim'

"show bar/status  https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'leafo/moonscript-vim'

Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Nerdtree config
let NERDTreeShowBookmarks = 1
let NERDTreeWinPos = "left"
map <F8> :NERDTree<CR>

" snipMate config
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

" ctrlp config
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip "ignore these files
set grepprg=ag\ --nogroup\
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .DS_Store
      \ --ignore tmp
      \ --ignore images
      \ --ignore vendor
      \ --ignore vcr
      \ --ignore "tags"
      \ --ignore vcr_cassettes
      \ --ignore "**/*.(png|jpeg|jpg|gif|bmp)"
      \ -g ""'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" does not cache
let g:ctrlp_use_caching = 0

" YCM config
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

" airline config
let g:airline_theme='simple'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
set laststatus=2

" ack
let g:ackprg = 'ag --vimgrep'

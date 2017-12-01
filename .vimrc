"blkcat commonly settings:

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ ___  __  __ __  __  ___  _   _ 
" / ___/ _ \|  \/  |  \/  |/ _ \| \ | |
"| |  | | | | |\/| | |\/| | | | |  \| |
"| |__| |_| | |  | | |  | | |_| | |\  |
" \____\___/|_|  |_|_|  |_|\___/|_| \_|
"                                      
"blkcat:set leader
let mapleader=","

set noeb
set report=0

set timeoutlen=1000
set ttimeoutlen=100
set laststatus=2
set number
set ruler
set cursorline
set cursorcolumn
set showcmd
set history=1000
set nobackup
set noswapfile

set splitbelow
set splitright

set autoindent
set cindent
set ignorecase
set hlsearch
set incsearch
set wildmenu

set foldmethod=syntax
set nofoldenable

set backspace=indent,eol,start
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set smarttab
set tabstop=4
set softtabstop=4
syntax enable
syntax on

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030


set selection=exclusive
set selectmode=mouse,key

set linespace=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set cinoptions=g0,:0,N-s,(0
set smartindent
set expandtab
set shiftwidth=4
set history=1000
set nowrap

set magic                   

set autoread
set autowrite
set confirm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termencoding=utf-8
set encoding=utf8

set t_Co=256

"quit 
nmap <ESC>w :w<Cr>
nmap <ESC>q :q!<Cr>
"split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

filetype on
filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"__     ___   _ _   _ ____  _     _____ 
"\ \   / / | | | \ | |  _ \| |   | ____|
" \ \ / /| | | |  \| | | | | |   |  _|  
"  \ V / | |_| | |\  | |_| | |___| |___ 
"   \_/   \___/|_| \_|____/|_____|_____|
"                                       

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'

"my Bundle here:
"
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'L9'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator', {'branch':'stable'}
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 't9md/vim-quickhl'
Bundle 'tpope/vim-fugitive'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'powerline/powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Yggdroot/indentLine'
Bundle 'easymotion/vim-easymotion'
Bundle 'iamcco/markdown-preview.vim'
Bundle 'haya14busa/incsearch.vim'
Bundle 'ryanoasis/vim-devicons'
Bundle 'w0rp/ale'
Bundle 'zeekay/vim-beautify'
Bundle 'thinca/vim-quickrun'
Bundle 'skywind3000/asyncrun.vim'
Bundle 'majutsushi/tagbar'
Bundle 'chxuan/change-colorscheme'
Bundle 'wsdjeg/FlyGrep.vim'
Bundle 'iamcco/mathjax-support-for-mkdp'
Bundle 'Valloric/MatchTagAlways'
Bundle 'docunext/closetag.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-endwise'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'vim-scripts/txt.vim'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'will133/vim-dirdiff'
Bundle 'mhinz/vim-startify'
"...................................
" vim-scripts repos
Bundle 'davidhalter/jedi-vim'
Bundle 'a.vim'
Bundle 'cscope.vim'
Bundle 'EasyGrep'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'VOoM'
Bundle 'VimIM'
Bundle 'header.vim'
Bundle 'LargeFile'
Bundle 'CCTree'
"......................................
call vundle#end()
filetype plugin indent on

runtime macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"__   ______ __  __ 
"\ \ / / ___|  \/  |
" \ V / |   | |\/| |
"  | || |___| |  | |
"  |_| \____|_|  |_|
"
"ycm
set completeopt-=preview

set tags+=./.tags
                   
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0

"let g:syntastic_always_populate_loc_list = 1

let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_complete_in_comments = 1

let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_cache_omnifunc = 0

let g:ycm_complete_in_strings = 1 

let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_seed_identifiers_with_syntax = 1

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <leader>u :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>i :YcmCompleter GoToDefinition<CR>
nnoremap <leader>o :YcmCompleter GoToInclude<CR>
inoremap <leader>, <C-x><C-o>

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _   _ _____ ____  ____      _____ ____  _____ _____ 
"| \ | | ____|  _ \|  _ \    |_   _|  _ \| ____| ____|
"|  \| |  _| | |_) | | | |_____| | | |_) |  _| |  _|  
"| |\  | |___|  _ <| |_| |_____| | |  _ <| |___| |___ 
"|_| \_|_____|_| \_\____/      |_| |_| \_\_____|_____|
"
"
"nerdtree
                                                     
let NERDTreeWinPos="left"

let NERDChristmasTree=1
 
let NERDTreeAutoCenter=1
 
let NERDTreeMouseMode=2
 
let NERDTreeShowFiles=1
 
let NERDTreeShowHidden=1

let NERDTreeHightCursorline=1

let NERDTreeShowLineNumbers=1

let NERDTreeWinSize=32

let NERDTreeMinimalUI=1

let NERDTreeAutoDeleteBuffer=1

" nerdtree
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
map <Leader>n :NERDTreeToggle<CR>
imap <Leader>n <ESC> :NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _____ ____  _     ____  
" / ___|_   _|  _ \| |   |  _ \ 
"| |     | | | |_) | |   | |_) |
"| |___  | | |  _ <| |___|  __/ 
" \____| |_| |_| \_\_____|_|    
"                           
"                           
" ctrlp

let g:ctrlp_map = '<leader>p'

let g:ctrlp_cmd = 'CtrlP'

map <leader>f :CtrlPMRU<CR>

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }

let g:ctrlp_working_path_mode=0

let g:ctrlp_match_window_bottom=1

let g:ctrlp_max_height=15

let g:ctrlp_match_window_reversed=0

let g:ctrlp_mruf_max=500

let g:ctrlp_follow_symlinks=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _   _ _   _ ____   ___  
" / ___| | | | \ | |  _ \ / _ \ 
"| |  _| | | |  \| | | | | | | |
"| |_| | |_| | |\  | |_| | |_| |
" \____|\___/|_| \_|____/ \___/ 
"                               
"                               
"gundo
nnoremap <F6> :GundoToggle<CR>

let g:gundo_width = 50

let g:gundo_preview_height = 40

let g:gundo_right = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _   _ _   _____ ___ ____  _   _ ___ ____  ____  
"| | | | | |_   _|_ _/ ___|| \ | |_ _|  _ \/ ___| 
"| | | | |   | |  | |\___ \|  \| || || |_) \___ \ 
"| |_| | |___| |  | | ___) | |\  || ||  __/ ___) |
" \___/|_____|_| |___|____/|_| \_|___|_|   |____/ 
"
"
" let g:UltiSnipsExpandTriger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"

let g:UltiSnipsJumpBackwardTrigger="<C-p>"

let g:UltiSnipsEditSplit="vertical"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ ____   ____ ___  ____  _____ 
" / ___/ ___| / ___/ _ \|  _ \| ____|
"| |   \___ \| |  | | | | |_) |  _|  
"| |___ ___) | |__| |_| |  __/| |___ 
" \____|____/ \____\___/|_|   |_____|
"                                    
"cscope
if has('cscope') 
		set cscopetag cscopeverbose 
		if has('quickfix') 
				set cscopequickfix=s-,c-,d-,i-,t-,e- 
		endif 
		cnoreabbrev csa cs add 
		cnoreabbrev csf cs find 
		cnoreabbrev csk cs kill 
		cnoreabbrev csr cs reset 
		cnoreabbrev css cs show 
		cnoreabbrev csh cs help 
		
		"command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src 
endif

"nnoremap <leader>l  :call ToggleLocationList()<CR>

nnoremap <leader>fa :call cscope#findInteractive(expand('<cword'))<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _____  _    ____ ____    _    ____  
"|_   _|/ \  / ___| __ )  / \  |  _ \ 
"  | | / _ \| |  _|  _ \ / _ \ | |_) |
"  | |/ ___ \ |_| | |_) / ___ \|  _ < 
"  |_/_/   \_\____|____/_/   \_\_| \_\
"                                     
"                                       
"tagbar
" let g:tagbar_ctags_bin = '/usr/bin/ctags' "linux
" let g:tagbar_ctags_bin = '/usr/local/bin/ctags' "mac
let g:tagbar_width = 30
map <Leader>t :TagbarToggle<CR>
imap <Leader>t <ESC> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____   _____        _______ ____  _     ___ _   _ _____ 
"|  _ \ / _ \ \      / / ____|  _ \| |   |_ _| \ | | ____|
"| |_) | | | \ \ /\ / /|  _| | |_) | |    | ||  \| |  _|  
"|  __/| |_| |\ V  V / | |___|  _ <| |___ | || |\  | |___ 
"|_|    \___/  \_/\_/  |_____|_| \_\_____|___|_| \_|_____|
"                                                         
"                                                         
"powerline
let g:Powerline_symbols = 'unicode'

let g:Powerline_colorscheme = 'solarized256'
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___ _   _ ____  _____ _   _ _____ ____ _   _ ___ ____  _____ 
"|_ _| \ | |  _ \| ____| \ | |_   _/ ___| | | |_ _|  _ \| ____|
" | ||  \| | | | |  _| |  \| | | || |  _| | | || || | | |  _|  
" | || |\  | |_| | |___| |\  | | || |_| | |_| || || |_| | |___ 
"|___|_| \_|____/|_____|_| \_| |_| \____|\___/|___|____/|_____|
"                                                              
" indentguide
"let g:indent_guides_enable_on_vim_startup = 1
"set ts=4 sw=4 et

let g:indent_guides_start_level = 2

let g:indent_guides_guide_size = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    _    
"   / \   
"  / _ \  
" / ___ \ 
"/_/   \_\
"
"
"nmap <leader>ch :AS<Cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____   ___  _        _    ____  ___ __________ ____  
"/ ___| / _ \| |      / \  |  _ \|_ _|__  / ____|  _ \ 
"\___ \| | | | |     / _ \ | |_) || |  / /|  _| | | | |
" ___) | |_| | |___ / ___ \|  _ < | | / /_| |___| |_| |
"|____/ \___/|_____/_/   \_\_| \_\___/____|_____|____/ 
"                                                      
"let g:solarized_termcolor=256
"set background=dark
"colorscheme solarized
"if has('gui_running')
"    	set background=light
"else
"    	set background=dark
"endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   _          _ _            _           
"  (_) ___  __| (_)    __   _(_)_ __ ___  
"  | |/ _ \/ _` | |____\ \ / / | '_ ` _ \ 
"  | |  __/ (_| | |_____\ V /| | | | | | |
" _/ |\___|\__,_|_|      \_/ |_|_| |_| |_|
"|__/                                     
"
let g:jedi#use_splits_not_buffers = "left"

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _        _    ____   ____ _____      _____ ___ _     _____ 
"| |      / \  |  _ \ / ___| ____|    |  ___|_ _| |   | ____|
"| |     / _ \ | |_) | |  _|  _| _____| |_   | || |   |  _|  
"| |___ / ___ \|  _ <| |_| | |__|_____|  _|  | || |___| |___ 
"|_____/_/   \_\_| \_\\____|_____|    |_|   |___|_____|_____|
"                                                            
"largefile
let g:LargeFile = 20
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___ _   _ ____  _____ _   _ _____ _     ___ _   _ _____ 
"|_ _| \ | |  _ \| ____| \ | |_   _| |   |_ _| \ | | ____|
" | ||  \| | | | |  _| |  \| | | | | |    | ||  \| |  _|  
" | || |\  | |_| | |___| |\  | | | | |___ | || |\  | |___ 
"|___|_| \_|____/|_____|_| \_| |_| |_____|___|_| \_|_____|
"                                                         
" indentline
let g:indentLine_enabled=0
nmap <Leader><Leader>il :IndentLinesToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"_____    _    ______   ____  __  ___ _____ ___ ___  _   _ 
"| ____|  / \  / ___\ \ / /  \/  |/ _ \_   _|_ _/ _ \| \ | |
"|  _|   / _ \ \___ \\ V /| |\/| | | | || |  | | | | |  \| |
"| |___ / ___ \ ___) || | | |  | | |_| || |  | | |_| | |\  |
"|_____/_/   \_\____/ |_| |_|  |_|\___/ |_| |___\___/|_| \_|
"                                                          
" easymotion
let g:EasyMotion_smartcase = 1
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>. <Plug>(easymotion-repeat)
" <Leader>f{char} to move to {char}
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" __  __    _    ____  _  ______   _____        ___   _ 
"|  \/  |  / \  |  _ \| |/ /  _ \ / _ \ \      / / \ | |
"| |\/| | / _ \ | |_) | ' /| | | | | | \ \ /\ / /|  \| |
"| |  | |/ ___ \|  _ <| . \| |_| | |_| |\ V  V / | |\  |
"|_|  |_/_/   \_\_| \_\_|\_\____/ \___/  \_/\_/  |_| \_|
"                                                       
"markdown
let g:mkdp_path_to_chrome = "google-chrome"
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___ _   _  ____ ____  _____    _    ____   ____ _   _ 
"|_ _| \ | |/ ___/ ___|| ____|  / \  |  _ \ / ___| | | |
" | ||  \| | |   \___ \|  _|   / _ \ | |_) | |   | |_| |
" | || |\  | |___ ___) | |___ / ___ \|  _ <| |___|  _  |
"|___|_| \_|\____|____/|_____/_/   \_\_| \_\\____|_| |_|
"                                                       
" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____  _______     _____ ____ ___  _   _ ____  
"|  _ \| ____\ \   / /_ _/ ___/ _ \| \ | / ___| 
"| | | |  _|  \ \ / / | | |  | | | |  \| \___ \ 
"| |_| | |___  \ V /  | | |__| |_| | |\  |___) |
"|____/|_____|  \_/  |___\____\___/|_| \_|____/ 
"                                               
" devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    _    ___ ____  _     ___ _   _ _____ 
"   / \  |_ _|  _ \| |   |_ _| \ | | ____|
"  / _ \  | || |_) | |    | ||  \| |  _|  
" / ___ \ | ||  _ <| |___ | || |\  | |___ 
"/_/   \_\___|_| \_\_____|___|_| \_|_____|
"                                         
" airline
let g:airline_theme="luna"
" let g:airline_theme="badwolf"
let g:airline_powerline_fonts = 1
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _____  _    ____ ____  
" / ___|_   _|/ \  / ___/ ___| 
"| |     | | / _ \| |  _\___ \ 
"| |___  | |/ ___ \ |_| |___) |
" \____| |_/_/   \_\____|____/ 
"                              
" ctags
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags
let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_semantic_triggers = {} 
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____   _____  ____   ______ _____ _   _ 
"|  _ \ / _ \ \/ /\ \ / / ___| ____| \ | |
"| | | | | | \  /  \ V / |  _|  _| |  \| |
"| |_| | |_| /  \   | || |_| | |___| |\  |
"|____/ \___/_/\_\  |_| \____|_____|_| \_|
"                                         
"doxygen
let g:DoxygenToolkit_authorName="blackwhitedoggie@163.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_commentType="Qt"

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____ ___  _     ___  ____  ____   ____ _   _ _____ __  __ _____ 
"/ ___/ _ \| |   / _ \|  _ \/ ___| / ___| | | | ____|  \/  | ____|
" |  | | | | |  | | | | |_) \___ \| |   | |_| |  _| | |\/| |  _|  
" |__| |_| | |__| |_| |  _ < ___) | |___|  _  | |___| |  | | |___ 
"\____\___/|_____\___/|_| \_\____/ \____|_| |_|_____|_|  |_|_____|
"                                                                 
" change-colorscheme
map <F10> :NextColorScheme<CR>
imap <F10> <ESC> :NextColorScheme<CR>
map <F9> :PreviousColorScheme<CR>
imap <F9> <ESC> :PreviousColorScheme<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
set background=dark
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme monokai

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ ____  ____     ____ _        _    ____ ____    _   _ ___ 
" / ___|  _ \|  _ \   / ___| |      / \  / ___/ ___|  | | | |_ _|
"| |   | |_) | |_) | | |   | |     / _ \ \___ \___ \  | |_| || | 
"| |___|  __/|  __/  | |___| |___ / ___ \ ___) |__) | |  _  || | 
" \____|_|   |_|      \____|_____/_/   \_\____/____/  |_| |_|___|
"                                                                
" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

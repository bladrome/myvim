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
set smarttab
set tabstop=4
set softtabstop=4

set encoding=utf-8

"quit 
nmap <ESC>w :w<Cr>
nmap <ESC>q :q!<Cr>
"split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

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

" let Vundle manage Vundle
Bundle 'VundleVim/Vundle.vim'

"my Bundle here:
"
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator', {'branch':'stable'}
Bundle 'vim-syntastic/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 't9md/vim-quickhl'
Bundle 'tpope/vim-fugitive'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'powerline/powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"...................................
" vim-scripts repos
Bundle 'davidhalter/jedi-vim'
Bundle 'a.vim'
Bundle 'Tagbar'
Bundle 'cscope.vim'
Bundle 'EasyGrep'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'vcscommand.vim'
Bundle 'VOoM'
Bundle 'VimIM'
Bundle 'header.vim'
Bundle 'auto'
Bundle 'LargeFile'
Bundle 'CCTree'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ______   ___   _ _____  _    ____ _____ ___ ____ 
"/ ___\ \ / / \ | |_   _|/ \  / ___|_   _|_ _/ ___|
"\___ \\ V /|  \| | | | / _ \ \___ \ | |  | | |    
" ___) || | | |\  | | |/ ___ \ ___) || |  | | |___ 
"|____/ |_| |_| \_| |_/_/   \_\____/ |_| |___\____|
"                                                  
"                                                  
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"__   ______ __  __ 
"\ \ / / ___|  \/  |
" \ V / |   | |\/| |
"  | || |___| |  | |
"  |_| \____|_|  |_|
"

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

let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_seed_identifiers_with_syntax = 1

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

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

nnoremap <silent><F4> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _____ ____  _     ____  
" / ___|_   _|  _ \| |   |  _ \ 
"| |     | | | |_) | |   | |_) |
"| |___  | | |  _ <| |___|  __/ 
" \____| |_| |_| \_\_____|_|    
"                           
"                           
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
"                               
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
" _____  _    ____ _     ___ ____ _____ 
"|_   _|/ \  / ___| |   |_ _/ ___|_   _|
"  | | / _ \| |  _| |    | |\___ \ | |  
"  | |/ ___ \ |_| | |___ | | ___) || |  
"  |_/_/   \_\____|_____|___|____/ |_|  
"                                       
"                                       
nmap <F3> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____   _____        _______ ____  _     ___ _   _ _____ 
"|  _ \ / _ \ \      / / ____|  _ \| |   |_ _| \ | | ____|
"| |_) | | | \ \ /\ / /|  _| | |_) | |    | ||  \| |  _|  
"|  __/| |_| |\ V  V / | |___|  _ <| |___ | || |\  | |___ 
"|_|    \___/  \_/\_/  |_____|_| \_\_____|___|_| \_|_____|
"                                                         
"                                                         
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
nmap <leader>ch :AS<Cr>
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
let g:LargeFile = 20

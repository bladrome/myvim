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
set noerrorbells
set report=0

set laststatus=2
set number
set ruler
set cursorline
set cursorcolumn
set showcmd
set history=1000
set nobackup
set noswapfile

set splitright
set splitbelow

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
set wrap

set magic                   

set autoread
set autowrite
set confirm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termencoding=utf-8

set t_Co=256

"quit 
nmap <ESC>w :w<Cr>
nmap <ESC>q :q!<Cr>
"split navigations
"
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug-vim

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.config/nvim/site/autoload/
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-plug'

"my Bundle here:
"
" original repos on github
Plug 'hardcoreplayers/spaceline.vim'
Plug 'bagrat/vim-buffet'
Plug 'liuchengxu/vim-clap'
Plug 'tyru/caw.vim'
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'voldikss/vim-floaterm'
Plug 'sjl/gundo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/ListToggle'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdcommenter'
Plug 't9md/vim-quickhl'
Plug 'tpope/vim-fugitive'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'powerline/powerline'
Plug 'Yggdroot/indentLine'
Plug 'rstacruz/sparkup'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'mzlogin/vim-markdown-toc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'haya14busa/incsearch.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'thinca/vim-quickrun'
Plug 'majutsushi/tagbar'
Plug 'chxuan/change-colorscheme'
Plug 'joshdick/onedark.vim'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'docunext/closetag.vim'
Plug 'godlygeek/tabular'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/txt.vim'
Plug 'gorodinskiy/vim-coloresque'
Plug 'will133/vim-dirdiff'
Plug 'mhinz/vim-startify'
Plug 'lervag/vimtex'
Plug 'alpertuna/vim-header'
Plug 'Sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'flazz/vim-colorschemes'

"...................................
" vim-scripts repos
"Plugin 'davidhalter/jedi-vim'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/cscope.vim'
Plug 'vim-scripts/EasyGrep'
Plug 'vim-scripts/ShowPairs'
Plug 'vim-scripts/VOoM'
Plug 'vim-scripts/VimIM'
Plug 'vim-scripts/LargeFile'
Plug 'vim-scripts/CCTree'
"......................................
call plug#end()

filetype plugin indent on
filetype on
filetype plugin on
filetype indent on



"COC
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>




""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    _    _     _____ 
"   / \  | |   | ____|
"  / _ \ | |   |  _|  
" / ___ \| |___| |___ 
"/_/   \_\_____|_____|
"ale                     
let g:ale_fixers = {
\   'python':['autopep8', 'isort','yapf'],
\   'cpp':['clang-format'],
\   'tex':['lacheck']
\}


" Deoplete
let g:deoplete#enable_at_startup = 1

" denite"
" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction


" neosnippets
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


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
let g:UltiSnipsExpandTriger="<tab>"

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
let g:tagbar_width = 30
map <Leader>t :TagbarToggle<CR>
imap <Leader>t <ESC> :TagbarToggle<CR>

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
"   _          _ _            _
"  (_) ___  __| (_)    __   _(_)_ __ ___  
"  | |/ _ \/ _` | |____\ \ / / | '_ ` _ \ 
"  | |  __/ (_| | |_____\ V /| | | | | | |
" _/ |\___|\__,_|_|      \_/ |_|_| |_| |_|
"|__/                                     
"
"let g:jedi#use_splits_not_buffers = "left"

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
let g:mkdp_path_to_chrome = "firefox"
nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview
"nmap <silent> <F8> <Plug>StopMarkdownPreview
"imap <silent> <F8> <Plug>StopMarkdownPreview

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
map <F9> :NextColorScheme<CR>
imap <F9> <ESC> :NextColorScheme<CR>
map <F10> :PreviousColorScheme<CR>
imap <F10> <ESC> :PreviousColorScheme<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme monokai
colorscheme onedark
let g:airline_theme='onedark'

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"__     _____ __  __       _   _ _____    _    ____  _____ ____  
"\ \   / /_ _|  \/  |     | | | | ____|  / \  |  _ \| ____|  _ \ 
" \ \ / / | || |\/| |_____| |_| |  _|   / _ \ | | | |  _| | |_) |
"  \ V /  | || |  | |_____|  _  | |___ / ___ \| |_| | |___|  _ < 
"   \_/  |___|_|  |_|     |_| |_|_____/_/   \_\____/|_____|_| \_\
"                                                                
"vim-header
let g:header_field_author = 'blkcat'
let g:header_field_author_email = 'blackwhitedoggie@163.com'
let g:header_alignment = 1
let g:header_field_modified_by = 0
let g:header_auto_add_header = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimtex
" let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
" let g:vimtex_compiler_progname = '/usr/bin/vim'
let g:tex_flavor = 'xelatex'
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdfxe',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

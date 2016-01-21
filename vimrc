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
nmap <C-q><C-q> :q<Cr>
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
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-pathogen'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'OmniSharp/omnisharp-vim.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nathanaelkane/vim-indent-guides'
"..................................
" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'cscope.vim'
Bundle 'The-NERD-tree'
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
Bundle 'a.vim'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OmniSharp won't work without this setting
"  ___  __  __ _   _ ___ ____  _   _    _    ____  ____  
" / _ \|  \/  | \ | |_ _/ ___|| | | |  / \  |  _ \|  _ \ 
"| | | | |\/| |  \| || |\___ \| |_| | / _ \ | |_) | |_) |
"| |_| | |  | | |\  || | ___) |  _  |/ ___ \|  _ <|  __/ 
" \___/|_|  |_|_| \_|___|____/|_| |_/_/   \_\_| \_\_|    
"                                                        

filetype plugin on

"This is the default value, setting it isn't actually necessary
let g:OmniSharp_host = "http://localhost:2000"

"Set the type lookup function to use the preview window instead of the status line
let g:OmniSharp_typeLookupInPreview = 1

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

"Super tab settings - uncomment the next 4 lines
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1

"don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview
" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono)
" By default, only Type/Method signatures are fetched. Full documentation can still be fetched when
" you need it with the :OmniSharpDocumentation command.
" let g:omnicomplete_fetch_documentation=1

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow


"""""""""""""""""""""""""""""""""""
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'

" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" If you are using the omnisharp-roslyn backend, use the following
let g:syntastic_cs_checkers = ['code_checker']
augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END


" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

" Contextual code actions (requires CtrlP or unite.vim)
nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <leader>nm :OmniSharpRename<cr>
nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr> 
nnoremap <leader>cf :OmniSharpCodeFormat<cr> " Load the current .cs file to the nearest project nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

" Add syntax highlighting for types and interfaces
nnoremap <leader>th :OmniSharpHighlightTypes<cr>
"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden

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

let g:syntastic_always_populate_loc_list = 1

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
                                                     
let NERDTreeWinPos="right"

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

" ______   _______ _   _  ___  _   _ 
"|  _ \ \ / /_   _| | | |/ _ \| \ | |
"| |_) \ V /  | | | |_| | | | |  \| |
"|  __/ | |   | | |  _  | |_| | |\  |
"|_|    |_|   |_| |_| |_|\___/|_| \_|
"                                    
" Pathogen load

filetype off 

call pathogen#infect()

call pathogen#helptags()

let g:pymode_rope_goto_definition_bind = "<C-]>"

let g:pymode_run_bind = "<C-S-e>"

let g:pymode_doc_bind = "<C-S-d>"

filetype plugin indent on

syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _____ ____  _     ____  
" / ___|_   _|  _ \| |   |  _ \ 
"| |     | | | |_) | |   | |_) |
"| |___  | | |  _ <| |___|  __/ 
" \____| |_| |_| \_\_____|_|    
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
"nnoremap <F3> :GundoToggle<CR>
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
		
		command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src 
endif

nnoremap <leader>fa :call cscope#findInteractive(expand('<cword'))<CR>
"nnoremap <leader>l  :call ToggleLocationList()<CR>

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
nnoremap <F3> :Tlist<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ____   _____        _______ ____  _     ___ _   _ _____ 
"|  _ \ / _ \ \      / / ____|  _ \| |   |_ _| \ | | ____|
"| |_) | | | \ \ /\ / /|  _| | |_) | |    | ||  \| |  _|  
"|  __/| |_| |\ V  V / | |___|  _ <| |___ | || |\  | |___ 
"|_|    \___/  \_/\_/  |_____|_| \_\_____|___|_| \_|_____|
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
nmap <leader>ch :AS<Cr>

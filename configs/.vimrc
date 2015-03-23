" VUNDLE SETTINGS
"----------------
set nocompatible              " be iMproved, required, mora da bude PRVO!
" filetype off                  " required

set laststatus=2        " za airline da bi bio stalno aktivan

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing setings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General behaviour
"set autochdir                  " CWD is same as current file - baguje pluginove
set si                          " Smartident
set hidden                      " Omogucava da buffer ostane otvoren, i cuva undo

set history=400                 " keep 50 lines of command line history
set undolevels=400

" Tabbing
set expandtab                   " use spaces instead of tabs
set tabstop=2                   " insert 4 spaces whenever the tab key is pressed
set softtabstop=2
set shiftwidth=2                " set indentation to 4 spaces
set smarttab

set incsearch                   " search as characters are entered
set hlsearch                    " highlight search terms
set smartcase                   " Smart casing when searching
set ignorecase                  " ... or ignore casing

set copyindent
set autoindent                  " start new line at the same indentation level
set showcmd                     " show command in bottom bar
set cmdheight=1                 " The commandbar height

"filetype plugin indent on              " load filetype-specific indent files

" Lines
set wrap
set textwidth=79
set formatoptions=qrn1

" Folding
set foldmethod=manual           "moze i indent za auto
set fdc=2                       " column, ujedno i za levu marginu
set fdl=1                       " level

" Split
set splitbelow
set splitright

" Term color
set term=screen-256color

" Postoje bolje alternative od builtin
set nobackup
set noswapfile

" Backup & Swap u jedan dir
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//

" Automatically change current directory to that of the file
"autocmd BufEnter * silent! lcd %:p:h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface setings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" BOJE
set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
set background=dark

set mouse=a "aktivacija misa

" Default colo
colorscheme grb256

" COLORSCHEME FOR BUFFERS
" autocmd BufEnter * colorscheme Tomorrow-Night
" autocmd BufEnter *.php colorscheme grb256
" autocmd BufEnter *.rb colorscheme Tomorrow-Night

"DIFFERENT COLORSCHEME FOR RUBY AND MARKDOWN
"autocmd FileType ruby colorscheme railcasts
"autocmd FileType markdown colorscheme mac_classic

" Lepe colorscheme:
"------------------
" wombat256
" twilight256
" molokai
" bubblegum


" DARK themes:
" blackdust
" desert, desertEx +
" grayh +
" neon ++, slicno sto i native
" railscast ++
" slate +
" zenburn +
" grb256 ++
" 256-grayvim +
" LIGHT themes:
" bayQua
" dawn
" python

syntax on

set showmatch                        " Show matching braces when over one
set ruler                            " Always show current position
set number                           " Always show line-numbers
set numberwidth=3                    " Line-number margin width
set cursorline                       " highlight current line
set mousehide                        " Do not show mouse while typing
set antialias                        " Pretty fonts
"set t_Co=256                         " 256-color palletes
"set background=dark                 " Dark background variation of theme
"set guifont=Andale\ Mono\ 7.5       " Monospaced small font
set lazyredraw                       " Don't redraw while running macros
set wildmenu                         " Wild menu
set wildmode=full                    " Wild menu options

" Display special characters and helpers
set list
" Show < or > when characters are not displayed on the left or right.
" Also show tabs and trailing spaces.
set list listchars=nbsp:¬,tab:>-,trail:.,precedes:<,extends:>

" PASTE FROM CLIPBOARD
" Ovo iskljucuje indent prilikom pastovanja
" toggle za aktivaciju/gasenje
set pastetoggle=<F2>

" YANKSTACK - rotacija izmedju paste buffer
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" REMOVE TRAILING SPACE
" nnoremap <Leader>S :%s/\s\+$//e<CR> "ovo je na komandu
autocmd BufWritePre * :%s/\s\+$//e "on save :w

" VIM STARTIFY FIX
set viminfo='100,n$HOME/.vim/files/info/viminfo'

" TABS
"-----

set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop

" TAB COLORS:
":hi TabLineFill ctermfg=white ctermbg=colour235
":hi TabLine ctermfg=Blue ctermbg=Yellow
":hi TabLineSel ctermfg=Red ctermbg=Yellow

" Displayes only the tabname no full path
set guitablabel=\[%N\]\ %t\ %M

" TAB Keys
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" RESIZING WINDOWS
noremap ++ 5<c-w>+
noremap -- 5<c-w>-
noremap // 5<c-w>>
noremap ** 5<c-w><


" BUBBLE single&multiple lines
" Neradi ali zapamti shortcute!!!
"nmap <S-Up> ddkP
"nmap <S-Down> ddp
"vmap <S-Up> xkP`[V`]
"vmap <S-Down> xp`[V`]

"RESELECT VISUAL BLOCK AFTER INDENT
vnoremap < <gv
vnoremap > >gv

" GO TO ^,$ INSERT MODE
inoremap <C-a> <Home>
inoremap <C-e> <End>

" COMMMAND LINE EDITING
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Q - REPEAT LAST REC MACRO
map Q @@

" SPLIT AND SWITCH TO NEW SPLIT
map <Leader>sv <c-w>v<c-w>l
map <Leader>sh <c-w>s<c-w>j

" move splits around
nn <leader>sh <c-w><s-h>
nn <leader>sl <c-w><s-l>
nn <leader>sj <c-w><s-j>
nn <leader>sk <c-w><s-k>

" REMAP ^,$
"noremap H ^
"noremap L $

" LEADER KEY
" change the mapleader from \ to ,
"let mapleader="," " neradi

" Edit/reload vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Search CLEAR HIGHTLIGHT
nmap <silent> ,/ :nohlsearch<CR>

" NERDTree
nmap <F4> :NERDTreeToggle<cr>

" TAGBAR
nmap <F3> :TagbarToggle<CR>

" Preporuceno za backspace
set backspace=indent,eol,start

" ZAMENI SVE TABOVE SA SPACE
" :set expandtab
" :retab (izvrsi zamenu)


" MARKDOWN
au BufRead,BufNewFile *.md set filetype=markdown



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" OMNICOMPLETE TO CTRL+SPACE
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

"-----------
" VUNDLE CFG
"-----------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/plugins/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/plugins/')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" COLOR SCHEMES
"--------------
Plugin 'flazz/vim-colorschemes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'dandorman/vim-colors'
" Plugins 'altercation/vim-colors-solarized'


" AIRLINE
"--------
"let g:airline_theme='powerlineish'
"let g:airline#extensions#tabline#enabled = 1 "Automatically displays all buffers when there's only one tab open.
let g:airline_powerline_fonts = 1 " simbol fontovi iz powerline

" SESSIONS
"---------
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc' "dependency of session
" podesavanja za vim-session
:let g:session_autoload = 'no'


" PLUGINS
"--------


" CTAGS
" -----
" Plugin 'xolox/vim-easytags'
set tags=/.tags;
" let g:easytags_dynamic_files = 2


Plugin 'bling/vim-airline'            " /status bar
Plugin 'scrooloose/nerdtree'          " / filebrowser
Plugin 'terryma/vim-multiple-cursors' " / sublime slicno

" XML
Plugin 'othree/xml.vim'

" Snippets
Plugin 'SirVer/ultisnips'             " / za snipete hvaljeno
"let g:UltiSnipsSnippetsDir        = '~/.vim/snippets/'
"let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'snippets']
let g:ycm_use_ultisnips_completer = 1

" YOUCOMPLETEME
" let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_filetype_blacklist = { 'php' : 1, }
" let g:ycm_filetype_specific_completion_to_disable = { 'php': 1 }
let g:EclimCompletionMethod = 'omnifunc' " za eclim

" ULTISNIPS + YCM
"""""""""""""""""
" let g:UltiSnipsExpandTrigger       = "<tab>"
" let g:UltiSnipsJumpForwardTrigger  = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" "let g:UltiSnipsSnippetDirectories  = ["snips"]
"
" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips#JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction
"
" au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" END ULTISNIPS + YCM
"""""""""""""""""""""


" Snippets Collection
Plugin 'honza/vim-snippets'           " / snipet kolekcija

Plugin 'tpope/vim-surround'           " / za brackete raznih vrsta

Plugin 'kien/ctrlp.vim'               " / kao sublime
"Plugin 'szw/vim-ctrlspace'           " / bolje od ctrlP mnogo
Plugin 'sjl/gundo.vim'                " / adv undo

Plugin 'zoomwin'                      " / zoom prozora

Plugin 'mhinz/vim-startify'           " / asci art on start i meni

Plugin 'tomtom/tcomment_vim'          " / za komentare
Plugin 'godlygeek/tabular'            " / za alignement texta
Plugin 'plasticboy/vim-markdown'      " / MARKdown

Plugin 'scrooloose/syntastic'         " / provera synthaxe
" podesavanje da ugasi style messages
let g:syntastic_quiet_messages = { "type": "style" }

Plugin 'Valloric/MatchTagAlways'      " / uvek prikazuje brackete, kao i sublime

" BEST AUTOCOMPLETE
Plugin 'Valloric/YouCompleteMe'       " / intelisense code, preporuceno ali lose radi


" CLOSE PREVIEW OMNICOMPLETE WIN (OVO PRAVI PROBLEM SA COMMANDLINE WINDOW)
"
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif


Plugin 'majutsushi/tagbar'            " / tagbar odlican (lista funkcije i var)

Plugin 'fweep/vim-tabber'             " / kao powerline za tabove, moze i da ih pomera
set tabline=%!tabber#TabLine() " / Cfg za vim-tabber
" VIM-TABBER
let g:tabber_predefined_labels = { 1: 'Main', 2: 'Models', 3: 'Views', 4: 'Controllers', 5: '*.*' }
let g:tabber_divider_style = 'compatible'
" Tabber keybinds
noremap <silent> `1               :TabberSelectLastActive<CR>
noremap <silent> <Leader>1        :tabnext 1<CR>
noremap <silent> <Leader>2        :tabnext 2<CR>
noremap <silent> <Leader>3        :tabnext 3<CR>
noremap <silent> <Leader>4        :tabnext 4<CR>
noremap <silent> <Leader>5        :tabnext 5<CR>


Plugin 'edsono/vim-matchit'           " / % za reci itd.. a ne samo zagrade

Plugin 'maxbrunsfeld/vim-yankstack'   " / bolji paste/copy NERADI

Plugin 'rking/ag.vim'                 " / grep/ack alternative

"Plugin 'rayburgemeestre/phpfolding.vim'   " / folding for php LOS JE PRONACI ZAMENU

" Synthax
"--------
" JAVASCRIPT
Plugin 'pangloss/vim-javascript'      " / bolja podrska za js
Plugin 'leshill/vim-json'             " / bolja podrska za json
Plugin 'othree/javascript-libraries-syntax.vim' "/ js frameworks...

" RUBY
Plugin 'tpope/vim-rails'              " / rails
Bundle 'vim-ruby/vim-ruby'



" PHP
Plugin 'StanAngeloff/php.vim'         " /updated php syntax

"EMMET
Plugin 'mattn/emmet-vim'              " / kao sublime

Plugin 'christoomey/vim-tmux-navigator'   " / neki shortcuti za tmux

Plugin 'tpope/vim-fugitive'           " / integracija sa git
Plugin 'Lokaltog/vim-easymotion'      " / laksi motion komande za vim
Plugin 'jiangmiao/auto-pairs'         " / zatvara brackete automatski


" VUNDLE SETTINGS
"----------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" ASCII Art
"----------
let g:startify_custom_header = [
             \'  ███████╗██████╗ ██╗     ███████╗███████╗███╗   ██╗ ',
       \'  ██╔════╝██╔══██╗██║     ██╔════╝██╔════╝████╗  ██║ ',
       \'  ███████╗██████╔╝██║     █████╗  █████╗  ██╔██╗ ██║ ',
       \'  ╚════██║██╔═══╝ ██║     ██╔══╝  ██╔══╝  ██║╚██╗██║ ',
       \'  ███████║██║     ███████╗███████╗███████╗██║ ╚████║ ',
       \'  ╚══════╝╚═╝     ╚══════╝╚══════╝╚══════╝╚═╝  ╚═══╝ ',
       \'',
       \'',
       \]

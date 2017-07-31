"(G)UI Settings {{{
  set background=dark "set 256 dark color scheme
"  set t_Co=256 "set 256 color support
  set t_Co=16
  set guifont=Fira\ Mono:h12
  set antialias
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set number "display line numbers
  set ruler "line position
  set showcmd "self explanatory
  set showmatch "show matching bracket/formatting mark
  set tm=500 "command timeout length
  set wrap "wrap lines
  set textwidth=0 "wrap w/o linebreak
  set wrapmargin=0 "wrap w/o linebreak
  set nolist "wrap w/o linebreak
  set linebreak "wrap w/o linebreak
  " set cursor line highlight
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
    hi cursorline cterm=none term=none
    highlight CursorLine guibg=#303000 ctermbg=234et
    set cursorline
  " set splits to right and bottom open
  set splitbelow
  set splitright
" }}}
"System Behaviour {{{
  set lazyredraw "self explanatory
  set mouse=a "mouse support
  set noerrorbells "self explanatory
  set novisualbell "self explanatory
  set nospell "disable spellcheck
  "backup files to the /tmp directory
  set nobackup
  set clipboard=unnamedplus "set clipboard

  " }}}
"Search settings {{{
  set hlsearch "highlight search term
  set ignorecase "ignore case when searching
  set incsearch
  set smartcase "use case when uppercase used in search
  set wrapscan "wrap search
  set wildmenu "extended command line completion
" }}}
"File Handling {{{
  filetype plugin indent on "rec filetypes
  set autoread "autoreload on file change
  set enc=utf-8 "utf-8 format
  set nocompatible "ignore vi compatibility
  set noswapfile "self explanatory
  syntax on "syntax highlighting
" }}}
"Formatting {{{
  set backspace=indent,eol,start "set bcksp behaviour
  set fo+=tnl "format options
  set list "show hidden chars
  set listchars=tab:>.,trail:.,extends:#,nbsp:. "how hidden chars are shown
  set modelines=1
" }}}
"Tab Handling {{{
  set autoindent "self explanatory
  set copyindent "no autoindent on paste
  set noexpandtab "spaces not tabs
  set pastetoggle=<F2> "self explanatory
  set smartindent "self explanatory
  set smarttab "self explanatory
  set tabstop=2 "set tab width to 2 spaces
  set shiftwidth=2 "self explanatory
  " allow toggling between local and default mode
  function TabToggle()
    if &expandtab
    set shiftwidth=2
    "set softtabstop=0
    set noexpandtab
    else
    set shiftwidth=2
    "set softtabstop=2
    set noexpandtab
    endif
  endfunction
  " autoformat indents
  if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on
    " ...
  endif
  nmap <F9> mz:execute TabToggle()<CR>'z
" }}}
"Folding {{{
  set foldenable "enable folding
  set foldlevel=5 "default to only fold >5 nesting
  set foldnestmax=10 "max nested folds
  set foldmethod=marker "fold based on marker
  set foldmarker={{,}} " define fold marker
" }}}
"Keybinds {{{
  let mapleader="," "leader char is comma
  "set tab to match char
  nnoremap <Tab> %
  "shorten window switch
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
  "space opens/closes folds
  nnoremap <space> za
  "turn off search
  nnoremap <leader><space> :nohlsearch<CR>
  "Toggle writing mode / programming mode
  nnoremap <F7> :setlocal spell! nocursorline! number! list!<CR>
  " edit vimrc/zshrc and load vimrc bindings
  nnoremap <leader>ev :vsp $MYVIMRC<CR>
  nnoremap <leader>ez :vsp ~/.zshrc<CR>
  nnoremap <leader>sv :source $MYVIMRC<CR>
  " append copied/cut block of text to lines
  nnoremap <leader>swap :$pu\|'[-\|1,g/^/''+m.\|s/^/\t/\|-j<CR>
" }}}
"Airline Options {{{
  let g:airline_left_sep = '' "remove separators
  let g:airline_powerline_fonts = 0 "no powerline fonts
  let g:airline_right_sep = '' "remove separators
  let g:airline_theme='ubaryd' "set airline theme
  let g:bufferline_echo = 0
  set laststatus=2 "always display status
  set noshowmode "hide normal
" }}}
" delimitMate Options {{{
  let delimitMate_expand_cr = 1
" }}}
" Syntastic Options {{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
" }}}
" CtrlP Options {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" }}}
" vim:foldmethod=marker:foldlevel=0

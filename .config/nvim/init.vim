"" ----------------------------------------
"" --- Discoople's Mediocre Nvim Config ---
"" ----------------------------------------
 
 set guicursor= "" - block cursor in Insert Mode  
"set signcolumn=yes " - creates a sign column on the lefthand side
 set number relativenumber "" - hybrid line numbers
 
 "" --- Tab settings
 set tabstop=4 softtabstop=4
 set shiftwidth=4
 set expandtab
 set smartindent
"" ----------------------------------------
 
 syntax on
 
 set ttyfast "" - fast scroll speed
 
 "" --- Search settings
 set hlsearch "" - highlight matching search patterns
 set incsearch "" - incremental search
 set ignorecase "" - include matching uppercase & lowercase words in search
 set smartcase "" - include only uppercase words w/ uppercase search term
"" ----------------------------------------
 
 set noswapfile "" - disables swap files
 set nobackup  "" - disables backup files

 "" --- Plugins 
 call plug#begin("~/.vim/plugged")
 Plug 'ap/vim-css-color'
 Plug 'gruvbox-community/gruvbox'
 call plug#end()
 colorscheme gruvbox
 hi Normal guibg=None ctermbg=None

"" --- Dvorak remap
 noremap h h 
 noremap t k
 noremap n t
 noremap s l
 noremap l n
 noremap L N

 noremap - $
 noremap _ ^
"" ----------------------------------------


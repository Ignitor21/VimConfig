"Smart indentation
set autoindent

"Use spaces instead of tabs
set expandtab

"Number of spaces in one tab
set shiftwidth=4

"Number of spaces to delete in one tab
set softtabstop=4

"Enable line number
set number 

"My favourite colorscheme 
colorscheme Benokai "for example: darkglass, Benokai

"Enable mouse in all modes
set mouse=a

"Mark all results of search
set hlsearch

"Work with system buffer
map <C-S-c> "+y
map <C-S-v> "+p

"Move lines up and down with alt+up or alt+down
nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>

"Enable NerdTree
call pathogen#infect()
syntax on
filetype plugin indent on

"Start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

"Exit Vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
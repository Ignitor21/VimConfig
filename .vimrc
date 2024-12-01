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

"Disable creating swap files
set noswapfile

"Using of system buffer
set clipboard=unnamedplus

"Work with system buffer
map <C-c> "+y
map <C-v> "+p

"Move lines up and down with alt+up or alt+down
nnoremap <M-Up> :m .-2<CR>==
nnoremap <M-Down> :m .+1<CR>==
inoremap <M-Down> <Esc>:m .+1<CR>==gi
inoremap <M-Up> <Esc>:m .-2<CR>==gi
vnoremap <M-Down> :m '>+1<CR>gv=gv
vnoremap <M-Up> :m '<-2<CR>gv=gv

" Select all text
nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG

"Enable NerdTree
call pathogen#infect()
syntax on
filetype plugin on

"Start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

"Exit Vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Gitgutter update time
set updatetime=100

"Enable gitgutter signcolumns
set signcolumn=yes

"Colours of gitgutter signs
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

nmap <C-Up>   <Plug>(GitGutterPrevHunk)
nmap <C-Down> <Plug>(GitGutterNextHunk)
nmap <C-Del>  <Plug>(GitGutterUndoHunk)

"Enable brackets colors
let g:rainbow_active = 1 

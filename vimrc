"=====================================
"	Start Configuration
"=====================================

" Enables syntax highlighing
syntax enable

" Put a line number
set number
set relativenumber

" (show command) To show the command pressed
set showcmd

" To not show the modes as -- Insert -- anymore
set noshowmode

" To show a line where is the cursor
set cursorline

" To enable the mouse 
set mouse=a

" Copy and Paste text from another place using 'p'
set clipboard=unnamedplus

" To add spaces as identent
set sw=2

" To show the current character where we are
set ruler

" To wriete a accents or special character
set encoding=utf-8

" To show match the character like () {} []
set showmatch

" Always display the status line
set laststatus=0

set numberwidth=1

" Good auto indent
set autoindent
" set background=dark

" Required to keep multiple buffers open multiple buffers
set hidden

" Making sure search highlights word as we type them
set hls is

" Tab completion everywhere
set wildmenu

"=====================================
"	End Configuration
"=====================================

"=====================================
"	Start Install Plugins
"=====================================

call plug#begin('~/.vim/plugged')

" This plugin help to make comment lines
Plug 'tpope/vim-commentary'

" This plugin is to install a tree show the directory
Plug 'preservim/nerdtree'

" This plugin is to navigate bewteen the open document since NERDTree
" To navigate between open file is press:
" ctrl + l => to move forwrd
" ctrl + h => to move backward
" ctrl + k => to move to up
" ctrl + j => to move to down
Plug 'christoomey/vim-tmux-navigator'

" This plugin works to auto complete a sign like {} [] '' etc
Plug 'jiangmiao/auto-pairs'

" This plugin mark with color a simbols like [] {} '' etc
Plug 'luochen1990/rainbow'

" This plugin is to show a line when the code is identent
Plug 'Yggdroot/indentLine'

" This plugin is for a custom theme bar under the window
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plugin which shows a git diff in the sign column. It shows which lines have been added, modified, or removed.
Plug 'airblade/vim-gitgutter'

call plug#end()

"=====================================
"	End Install Plugins
"=====================================

"=====================================
"	Start Custom Plugins
"=====================================

" The next line is to behavior nerd tree hide whe open another document
let NERDTreeQuitOnOpen=1

" The next line are to custom nerd tree 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" This line show an up bar saying the name of the document
let g:airline#extensions#tabline#enabled = 1

" This line is to choose which path formatter airline uses
let g:airline#extensions#tabline#formatter = 'unique_tail'

" This line show a date time under the bar 'custom airline'
" let g:airline_section_b = '%{strftime("%c")}'

" This set is for the plugin vim-gitgutter normaly is used for working with git
" https://victorhckinthefreeworld.com/2019/03/05/vim-gitgutter-plugin-vim-git/
set updatetime=250

"=====================================
"	End Custom Plugins
"=====================================

"=====================================
" 	Start Maping Keys
"=====================================

let mapleader=' '

" Shorcut to save and exit from vim
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"nmap <c-s> :w<cr>
"nmap <c-q> :q<cr>

" The next line clear highlighting search on escape in normal mode
nmap <Leader>cl :nohlsearch<CR>

" The next lines is to open and close the nerd tree
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>r :NERDTreeFocus<CR>R<c-w><c-p>

" The next custom key map is to navigate between open buffer
map <leader>n :bnext<cr>
map <leader>p :bprevious<cr>
map <leader>d :bdelete<cr>

"=====================================
"	End Maping Keys
"=====================================

"The next line are using for the highlight searched
set hlsearch
hi Search cterm=NONE ctermfg=red ctermbg=Yellow

"The next line is using to grant color to the selected text
"hi Visual term=reverse cterm=reverse guibg=Grey
hi Visual cterm=bold ctermbg=yellow ctermfg=red

" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SI = "\e[5 q"

" The next lines is because there was a delay when hitting ESC to exit insert mode back 
" to normal mode and show the block as cursor again.
set ttimeout
set ttimeoutlen=1
set ttyfast

" Se agrega una nueva linea de codigo 

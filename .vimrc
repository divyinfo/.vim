
" -------- ------------------ -------- "
" -------- Vundle init starts -------- "
" -------- ------------------ -------- "

so ~/.vim/vundles.vim


" -------- ------------------- -------- "
" -------- Personal def starts -------- "
" -------- ------------------- -------- "

syntax enable

" Make backspace behave normally
set backspace=indent,eol,start

filetype plugin on

" Default leader is backslash \
let mapleader = ','


"  -------- visuals --------  "
colorscheme atom-dark-256

" Use 256 colors; for terminal vim. 
set t_CO=256

" Show line numbers
set number 

" Disable scrollbars(left and right) 
" set guioptions-=l
" set guioptions-=L
" set guioptions-=r
" set guioptions-=R


"  -------- basic mappings --------  "

" Quick edit ~/.vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Quick edit ~/.vim/vundles.vim
nmap <Leader>eV :tabedit ~/.vim/vundles.vim<cr>

" Quick write
nmap <Leader>w :w<cr>

" Quick quit
nmap <Leader>q :q<cr>


"  -------- tabs --------  "

" Tab help
nmap <Leader>th :tab help 
nmap <Leader>tc :tabc<cr>


"  -------- splits --------  "
set splitbelow
set splitright

nmap <C-j> <C-W><C-J>
nmap <C-k> <C-W><C-K>
nmap <C-h> <C-W><C-H>
nmap <C-l> <C-W><C-L>


"  -------- navigations --------  "

" NERDTree
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <C-k><C-b> :NERDTreeToggle<cr>


"  -------- editing -------- "
vmap <Leader>y :w !pbcopy<cr>


"  -------- searching --------  "

" highlights
set hlsearch
set incsearch

" highlight removal
nmap <Leader><space> :nohlsearch<cr>


"  -------- auto-cmds -------  "

" Automatically source ~/.vimrc on save
augroup AutoSourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END



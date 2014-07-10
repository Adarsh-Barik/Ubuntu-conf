"" Created by Adarsh : Path to this configuration file is ~/.vimrc 

" Must be the first line in Vi Improved.
set nocompatible      
set autoindent        

" Highlight the current line
set cursorline        
hi CursorLine term=bold cterm=bold guibg=Grey80

" Using UTF-8
set encoding=utf-8    

" Lazy redraw
set lazyredraw         

" Doesn't create any backup file
set nobackup           
"set noswapfile         

" Toggling the paste mode 
set pastetoggle=<F10> 

"Minimal number of screen lines to keep above and below the cursor
set scrolloff=3       

" Display incomplete commands
set showcmd          

" Error bells are displayed visually
set visualbell        

" Shows autocomplete menus
set wildmenu          
set wildignore=*.o,*~ " 

" Llook in the current directory for 'tags', and work up the tree towards $HOME until one is found
set tags=./tags;$HOME 

" Ignore case when searching
set ignorecase 

" Search as you type
set incsearch  

"" Tab
" A tab equals these many columns
set tabstop=4 

" Insert appropriate number of spaces instead of a tab
set expandtab 
set shiftwidth=4
set smarttab


"" Plugins

" Vim-Latexsuite
set grepprg=grep\ -nH\ $* 

" Airrline
set laststatus=2          " REQUIRED!!! by airline (always have status line)
"set t_Co=256              " REQUIRED!!! by powerline

" Set line number
set number

" Enable syntax highlighting.
syntax on 

" Autocmd
" F9 compile
autocmd FileType c map <F9> :!gcc -o "%:p:r.out" "%:p" && "%:p:r.out"<CR>
autocmd FileType cpp map <F9> :!g++ -std=c++11 -pthread -o "%:p:r.out" "%:p" && "%:p:r.out"<CR>
autocmd FileType java map <F9> :!javac "%:p" && java -cp "%:p:h" "%:t:r"<CR>
autocmd FileType javascript map <F9> :!nodejs "%:p"<CR>
autocmd FileType lua map <F9> :!lua "%:p"<CR>
autocmd FileType python map <F9> :!python "%:p"<CR>
autocmd FileType ruby map <F9> :!ruby "%:p"<CR>
autocmd FileType scala map <F9> :!scala "%:p"<CR>

" Remove menubar
:set guioptions-=m

" Remove toolbar
:set guioptions-=T 

" Toggle menubar
nnoremap <A-m> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR> 

" Cross-Platform
if has('win32') || has('win64')
    set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" For screen 
if match($TERM, "screen")!=-1
      set term=xterm
endif

"" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'https://github.com/gmarik/vundle'

" Look and feel
" Bundle 'https://github.com/tomasr/molokai'

" For autocomplete
"" Bundle 'https://github.com/Shougo/neocomplcache'
Bundle 'https://github.com/Rip-Rip/clang_complete'
"Bundle 'https://github.com/Valloric/YouCompleteMe' 

" For snipmate
Bundle 'https://github.com/msanders/snipmate.vim'

" For documentation
Bundle 'https://github.com/vim-scripts/DoxygenToolkit.vim'
Bundle 'https://github.com/scrooloose/nerdcommenter'

" Checks for syntactic error
Bundle 'https://github.com/scrooloose/syntastic'
Bundle 'https://github.com/majutsushi/tagbar'

" Vim git plugins
Bundle 'https://github.com/tpope/vim-fugitive'
Bundle 'https://github.com/gregsexton/gitv'

" Handling Views
Bundle 'https://github.com/sandeepcr529/Buffet.vim'

" Restoring view
Bundle 'https://github.com/vim-scripts/restore_view.vim.git'

" Alignment and indentation
Bundle 'https://github.com/vim-scripts/Align'

" Easymotion plugin
Bundle 'https://github.com/Lokaltog/vim-easymotion'

" Nerdtree 
Bundle 'https://github.com/scrooloose/nerdtree'

" For ctrlp
Bundle 'https://github.com/kien/ctrlp.vim'

" For gundo
Bundle 'https://github.com/sjl/gundo.vim'

" For vim-airline
Bundle 'bling/vim-airline'

" For vim-latex-suite
Bundle 'http://git.code.sf.net/p/vim-latex/vim-latex'

" For Molokoi theme
Bundle 'https://github.com/tomasr/molokai'

" Filetype plugin and indentation
filetype plugin indent on 

" clang_complete

let g:clang_use_library      = 1 " instead of calling the 'clang/clang++' tool use 'libclang' directly
let g:clang_library_path     = '/home/adarsh/Downloads/LLVM/clang/lib/'
let g:clang_auto_select      = 1 " select nothing from the popup menu
" let g:clang_complete_auto    = 0
let g:clang_complete_copen   = 1 " open quickfix window on error

" Vim-Latexsuite
let g:tex_flavor='latex'

" DoxygenToolkit
let g:DoxygenToolkit_authorName = "Adarsh"

" Snipmate
let g:snips_author              = "Adarsh"

" Autocomplete 
set completeopt=longest,menuone

" Latex compilation (dvi->ps->pdf)
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -t a4 -Ppdf $*.dvi'
let g:Tex_CompileRule_pdf  = 'ps2pdf $*.ps'

" Restore view
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']

""  Map
nmap <silent> <leader>ev : e $HOME/.vimrc<CR>
nmap <silent> <leader>sv : so $HOME/.vimrc<CR>
nnoremap <leader>g       : GundoToggle<CR>
""nnoremap <leader>n       : NERDTreeToggle<CR>
nnoremap <leader>t       : TagbarToggle<CR>
""nnoremap <C-t>           : tabnew<CR>
nnoremap <C-Tab>         : tabnext<CR>
nnoremap <C-S-Tab>       : tabprev<CR>
nnoremap <F2>            :Bufferlist<CR> 
nnoremap <F10>           :NERDTreeToggle <CR>


" Vim-airline tabbar
let g:airline#extensions#tabline#enabled = 1

" Gvim

if has('gui_running')
    " set guifont=inconsolata\ Regular\ 12 " font and font-size
    "set guifont=TlwgMono\ Bold\ 11
    "set guifont=PragmataPro\ 11
    set guifont=Courier\ 10\ Pitch\ 11
    set guioptions=aivc
	colorscheme molokai
endif


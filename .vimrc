"" Created by Adarsh : Path to this configuration file is ~/.vimrc 

" Ensures that we can use many cool features of Vim, overwrites compatible
" mode which is more close to vi
set nocompatible      

" Turn on automatic indentation
set autoindent        

" Highlight the current line
set cursorline        
hi CursorLine term=bold cterm=bold guibg=Grey80

" Using UTF-8
set encoding=utf-8    

" Improves performance - less frequent screen redraw 
set lazyredraw         

" Doesn't create any backup file
set nobackup           

" Toggling the paste mode 
set pastetoggle=<F10> 

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3       

" Display incomplete commands
set showcmd          

" Error bells are displayed visually
set visualbell        

" Shows autocomplete menus
set wildmenu          
set wildignore=*.o,*~ " 

" Look in the current directory for 'tags', and work up the tree towards $HOME until one is found
set tags=./tags;$HOME 

" Ignore case when searching
set ignorecase 

" Search as you type
set incsearch  

" A tab equals these many columns
set tabstop=4 

" Insert appropriate number of spaces instead of a tab
set expandtab 
set shiftwidth=4
set smarttab


"" Plugins

" set last status only if there are multiple windows
set laststatus=2         

" REQUIRED!!! by powerline
set t_Co=256              

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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'


" For autocomplete
Plugin 'https://github.com/Rip-Rip/clang_complete'

" For snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional
Plugin 'honza/vim-snippets'
      "
" For documentation
Plugin 'https://github.com/scrooloose/nerdcommenter'

" Checks for syntactic error
" Plugin 'https://github.com/scrooloose/syntastic'

" See list of tags
Plugin 'https://github.com/majutsushi/tagbar'

" Vim git plugins
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/gregsexton/gitv'

" Restoring view - remembers cursor postion and folding
Plugin 'https://github.com/vim-scripts/restore_view.vim.git'

" Alignment and indentation
Plugin 'https://github.com/vim-scripts/Align'

" Easymotion - easily move word by word
Plugin 'https://github.com/easymotion/vim-easymotion'

" Nerdtree 
Plugin 'https://github.com/scrooloose/nerdtree'

" For ctrlp
Plugin 'https://github.com/kien/ctrlp.vim'

" For gundo
Plugin 'https://github.com/sjl/gundo.vim'

" For powerline
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

" For vim-latex-suite
Plugin 'http://git.code.sf.net/p/vim-latex/vim-latex'

" For Molokoi theme
Plugin 'https://github.com/tomasr/molokai'

" For vim move
" Plugin 'https://github.com/matze/vim-move'

" For Julia syntax highlighting
Plugin 'JuliaLang/julia-vim'

" All of your Plugins must be added before the following line
call vundle#end()

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

" For vim-move
let g:move_key_modifier = 'C'

""  Map
nmap <silent> <leader>ev : e $HOME/.vimrc<CR>
nmap <silent> <leader>sv : so $HOME/.vimrc<CR>
nnoremap <leader>g       : GundoToggle<CR>
nnoremap <leader>t       : TagbarToggle<CR>
nnoremap <C-Tab>         : tabnext<CR>
nnoremap <C-S-Tab>       : tabprev<CR>
nnoremap <F2>            :Bufferlist<CR> 
nnoremap <F10>           :NERDTreeToggle <CR>


" Gvim
if has('gui_running')
	colorscheme molokai
endif
set guifont=Source\ Code\ Pro\ for\ Powerline

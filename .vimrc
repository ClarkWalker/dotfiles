" Installation
" brew install vim cmake
" YouCompleteMe is annoying
" " cd ~/.vim/bundle/YouCompleteMe
" " ./install.py

" VUNDLE
" " Plugin Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate " " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to

" Main Configuration
let mapleader="\<Space>"
syntax on
set shell=bash
set number
set gdefault
set hlsearch
set guifont=Menlo\ for\ Powerline
filetype off                  " required
filetype plugin indent on
autocmd VimEnter * NERDTree
set tabstop=2
set shiftwidth=2
set expandtab
set noswapfile               
set nobackup                 
set splitright               
set splitbelow               
set clipboard^=unnamed
set clipboard^=unnamedplus
set wrap!
set synmaxcol=200
" set spell spelllang=en_us
" set complete+=kspell

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            

" MY PLUGINS!!
Plugin 'fatih/vim-go'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'altercation/vim-colors-solarized'    
Plugin 'Lokaltog/powerline'    
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'osyo-manga/vim-over'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'posva/vim-vue'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'ap/vim-css-color'

" Gist
let g:gist_open_browser_after_post = 1

" CSS Colors
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Commenting
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 
  \    'jsx': { 'left': '{/*','right': '*/}' }, 
  \    'typescript.tsx': { 'left': '{/*','right': '*/}' } 
  \  }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Snippet configuration.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardtrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Add snippets inside a snippets file
" .vim/bundle/vim-snippets/UltiSnips/html.snippets 
"snippet html "HTML layout"
"<!DOCTYPE html>
"<html>
"	<head>
"		<meta charset="utf-8">
"		<title>${0:${VISUAL}}</title>
"	</head>
"	<body>
"		
"	</body>
"</html>
"endsnippet

" JavaScript
" let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
autocmd BufRead,BufNewFile *.tsx setlocal filetype=typescript.tsx
autocmd BufRead,BufNewFile *.ts setlocal filetype=typescript

" ESLint
" let g:syntastic_javascript_checkers = ['eslint']
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_check_on_wq = 0

" Vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" Go Bindings
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 0
let g:go_play_open_browser = 0

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>e <Plug>(go-rename)

" Color Theme
syntax enable
colorscheme paperColor
" colorscheme molokai
" colorscheme 1989
" colorscheme benokai
" colorscheme solarized
let g:solarized_termcolors = &t_Co
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark

" Font Theme
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set guifont=Inconsolata\ for\ Powerline:h15
  endif
endif

" Download font from https://github.com/powerline/fonts/

" Find
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat .gitignore`"'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|build|dist)|(\.(swp|ico|git|svn))$'

"No arrow keys
nnoremap   <up>   <nop>
nnoremap  <down>  <nop>
nnoremap  <left>  <nop>
nnoremap  <right> <nop>
inoremap   <up>   <nop>
inoremap  <down>  <nop>
inoremap  <left>  <nop>
inoremap  <right> <nop>

" find and replace
function! VisualFindAndReplace()
  :OverCommandLine%s/
endfunction
function! VisualFindAndReplaceWithSelection() range
  :'<,'>OverCommandLine s/
endfunction

nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

"Spell check
nnoremap <leader>sc :set spell spelllang=en_us<CR>
nnoremap <leader>ns :set nospell<CR>

"Productivity
inoremap jj <ESC>
nnoremap d "_d
nnoremap x "_x
noremap <leader>s :w<CR>
noremap <leader>q :q<CR>
nnoremap <leader>w :wq<CR>
nnoremap <leader>fq :q!<CR>
nnoremap <leader>Q :xa<CR>
nnoremap <leader>u <C-r>
nnoremap <leader>o :noh<CR>
nnoremap <leader>f :/\c
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <C-b> :b#<CR>
nnoremap <leader>gg gg=G``<CR>
nnoremap <leader>ay ggVGy``
nnoremap <leader>ay ggVGy``

" Git
nnoremap <leader>GS :Git status<CR>
nnoremap <leader>GA :Git add -A<CR>
nnoremap <leader>GD :Git diff<CR> 
nnoremap <leader>GC :Git commit -m ""<Left>
nnoremap <leader>GP :Git push 

" Rebuffer
nnoremap <leader>br :bufdo e!<CR>

" Tab Buffers
nnoremap [ gT
nnoremap ] gt

" Quick Left and Right
nnoremap <C-h> ^
nnoremap <C-l> $

" Easy toggle
nnoremap <leader>\ :NERDTreeToggle<CR>

" Center n
nnoremap n nzzzv
nnoremap N Nzzzv

" Reload Vim
nnoremap <leader>so :so ~/.vimrc<CR>

" Window Resize
nnoremap <leader>mh :vertical resize +5<CR>
nnoremap <leader>ml :vertical resize -5<CR>
nnoremap <leader>mj :resize +5<CR>
nnoremap <leader>mk :resize -5<CR>

" Ack
nnoremap <Leader>F :tabnew <Bar> Ack<Space>
" " And/or abbreviation
abbr TAck tabnew <Bar> Ack
" Split rightward so as not to displace a left NERDTree

" Style
function! ToggleDark()
  if &background == "dark"
    set background=light
  else
    set background=dark
  endif
endfunction

nnoremap <leader>tt :call ToggleDark()<CR>

"Bottom bar settings
set noruler
set laststatus=2
set statusline=%<\ %f\ %m%y%=%-35.(Line:\ %l\ of\ %L,\ Col:\ %c%V\ (%P)%)

scriptencoding utf-8

" Options
set noswapfile
set ruler
set cmdheight=2
set laststatus=2
set title
set wildmenu
set showcmd
" 検索結果をハイライト表示
set hlsearch
set number
" インデント設定
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0
set tags+=tags

set nobackup
set noswapfile
set noundofile

" Start NeoBundle Setting
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" add plugins

" NERDTree
NeoBundle 'scrooloose/nerdtree'

" AutoClose
NeoBundle 'Townk/vim-autoclose'

" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'
" hybrid
NeoBundle 'w0ng/vim-hybrid'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" 行末の半角スペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'

" http://inari.hatenablog.com/entry/2014/05/05/231307
" """"""""""""""""""""""""""""""
" " 全角スペースの表示
" """"""""""""""""""""""""""""""
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
      autocmd ColorScheme * call ZenkakuSpace()
      autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
"""""""""""""""""""""""""""""""

" Git
NeoBundle 'tpope/vim-fugitive'

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

" End Neobundle Setting

" Color Scheme Setting

colorscheme molokai

if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

" Using the mouse on a terminal.
if has('mouse')
  set mouse=a
  if has('mouse_sgr')
    set ttymouse=sgr
    " I couldn't use has('mouse_sgr') 
  elseif v:version > 703 || v:version is 703 && has('patch632') 
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  endif
endif

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
set tabstop=2
set shiftwidth=2
set expandtab
" set tag
set tags=~/.tags

" Start NeoBundle Setting
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
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

" Required:
filetype plugin indent on

" for Rails
NeoBundle 'tpope/vim-rails'

" for Ruby -- auto add end
NeoBundle 'tpope/vim-endwise'

" for Ruby -- auto add comment on/off
NeoBundle 'tomtom/tcomment_vim'

" for Ruby indent guide
NeoBundle 'nathanaelkane/vim-indent-guides'

" auto vim-indent-guides on
let g:indent_guides_enable_on_vim_startup = 1

" add color for log
NeoBundle 'vim-scripts/AnsiEsc.vim'

" add neosnippet
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

""""""
" 順方向に補完候補を選択するには<c-n>とする。
" 逆方向に補完候補を選択するには<c-p>とする。(※<c-○>はCtrl + ○という意味。) 
" 補完候補から入力を決定するにはTabを押す。<Tab>を押すごとにマーカーごとにジャンプができる。
""""""

" end call NeoBundle
call neobundle#end()

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
if isdirectory(expand('~/.vim/bundle/vim-fugitive'))
  set statusline+=%{fugitive#statusline()}
endif

" setting neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

NeoBundleCheck

" End Neobundle Setting

" Color Scheme Setting

"colorscheme evening
colorscheme desert
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

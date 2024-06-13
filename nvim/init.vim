let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
        \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

" normal vimrc configs
" https://qiita.com/ahiruman5/items/4f3c845500c172a02935 参照
set encoding=utf-8 " ファイル読み込み時の文字コード設定
scriptencoding utf-8 " Vim script内でマルチバイト文字を使う場合の設定

" 文字コード設定
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コード自動判別
set fileformats=unix,dos,mac " 改行コードの自動判別
"set ambiwidth=double " □や○文字が崩れる問題を解決

" タブ・インデント
set expandtab " タブ入力を複数の空白入力に置き換え
set tabstop=4 " 画面上でタブ文字が占める幅
set softtabstop=4 " 連続した空白に対してタブやバックスペースでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 " smartindentで増減する幅

" 括弧
set showmatch " 括弧の対応関係を一瞬表示する

" 行数表示
set number

" Syntax highlighting
syntax on

" Increase the number of lines that I can yank (default: 50 lines)
set viminfo='20,\"1000

" use clipboard in vim
set clipboard=unnamed,unnamedplus

" dein.vim configs
" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/home/ahirui/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/home/ahirui/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
 filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
 syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" nerdtree settings
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" vim-airline settings
" Change color scheme
let g:airline_theme='rose-pine-dawn'
" Show the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Use powerline fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'z', 'warning', 'error' ]
    \ ]
" Change section z (since Esc char for cn was broken)
let g:airline_section_z = "%p%% ln:%l/%L☰ cn:%c"

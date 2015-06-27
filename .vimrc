 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Yggdroot/indentLine'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'mattn/webapi-vim'
NeoBundle 'open-browser.vim'

NeoBundle 'balloon-stat/dirs.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'tpope/vim-surround'

NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'altercation/vim-colors-solarized'

NeoBundle 'Shougo/neosnippet.vim'


" ユーザー定義スニペット保存ディレクトリ
let g:neocomplcache_snippets_dir = $HOME.'/snippet'
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

call neobundle#end()

filetype plugin indent on

let g:neosnippet#snippets_directory='~/snippets/'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)



nmap s <Plug>(easymotion-s2)

let g:user_emmet_leader_key='<C-e>'


" twitter
let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1 
let twitvim_count = 40


" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2

" 暗い背景色に合わせた配色にする
set background=white

" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number

   "「挿入モード→ノーマルモードでIMEを切るための設定」
   NeoBundle 'fuenor/im_control.vim'

 "----------------------------------------------------
 " 挿入モードでのカーソル移動
 "----------------------------------------------------
 """ 下に移動
 " inoremap <C-j> <Down>
 """ 上に移動
 " inoremap <C-k> <Up>
 """ 左に移動
 " inoremap <C-h> <Left>
 """ 右に移動
 " inoremap <C-l> <Right>


"""全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/



" Mac OSXデフォルトのvimでのエラー防止
" http://nanasi.jp/articles/howto/install/vim7_install_to_tiger.html"
:if ! has("migemo")
    :finish
:endif

" PHPの文法チェック START 参考 http://kannokanno.hatenablog.com/entry/20120716/1342428418  {{{1
augroup PHP
autocmd!
autocmd FileType php set makeprg=php\ -l\ %
" php -lの構文チェックでエラーがなければ「No syntax errors」の一行だけ出力される
autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
augroup END
"PHPの文法チェック END

" :vimgrepに加えて:grep、:Ggrepでも自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow

"-------- NeoBundleStart --------
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'mattn/emmet-vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-surround'
" 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php {{{2
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'h1mesuke/unite-outline'

NeoBundle 'kmnk/vim-unite-giti.git'
NeoBundle 'gregsexton/gitv.git'


NeoBundle 'AlessandroYorba/Alduin'
NeoBundle 'gosukiwi/vim-atom-dark'

NeoBundle 'simeji/winresizer'
NeoBundle 'thinca/vim-quickrun'
" レジスタ履歴を利用したヤンク
"参考 http://leafcage.hateblo.jp/entry/2013/10/31/yankroundvim
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'thinca/vim-qfreplace.git'

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
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'soramugi/auto-ctags.vim'
NeoBundle 'hail2u/vim-css3-syntax'
" 別プラグインとぶつかってエラーになる https://github.com/vim-jp/issues/issues/584
" NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript'
" カーソル配下の単語をハイライト
NeoBundle "osyo-manga/vim-brightest"
NeoBundle 'Lokaltog/vim-easymotion'
" スニペット
" 参考http://qiita.com/koyopro/items/c473b3c2323501b7891a
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" PHP補完
NeoBundle 'violetyk/neocomplete-php.vim'
NeoBundle 'akira-hamada/friendly-grep.vim'
NeoBundle 'mhinz/vim-startify'
" NeoBundle 'tyru/restart.vim'
"
NeoBundle 'vim-scripts/grep.vim'
NeoBundle "tyru/caw.vim.git"
"
"
" TODO 使い方
NeoBundle 'Shougo/vimfiler'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'deris/vim-rengbang'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

" チェック
" NeoBundleCheck

"-------- NeoBundleEnd

"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------
" insertモードから抜ける
inoremap <silent> jj <ESC>
"タブ切り替え
nnoremap <C-Tab>   gt
nnoremap <C-S-Tab> gT
" 挿入モードでのカーソル移動
inoremap <D-j> <Down>
inoremap <D-k> <Up>
inoremap <D-h> <Left>
inoremap <D-l> <Right

" 検索のハイライト取り消し
nnoremap <ESC><ESC> :nohlsearch<CR>

" easyMotion
nmap s <Plug>(easymotion-s2)

 "/yankround.vim'用キーマップ
 " nmap p <Plug>(yankround-p)
  "nmap P <Plug>(yankround-P)
  "nmap gp <Plug>(yankround-gp)
 " nmap gP <Plug>(yankround-gP)
 " nmap <C-p> <Plug>(yankround-prev)
 " nmap <C-n> <Plug>(yankround-next)
 " レジスタ履歴を利用したヤンクEND

" kwbd.vim
 nnoremap <silent> <Space>kw : :Kwbd<CR>

" Gitコマンド
nnoremap <silent> <Space>gd : :Gdiff<CR>
nnoremap <silent> <Space>gb : :Gblame<CR>
" TODO Revet

"Unite
nnoremap <silent> <Space>ba :UniteBookmarkAdd<CR>
nnoremap <silent> <Space>bl :Unite bookmark<CR>"

nnoremap <A-F1> :NERDTreeFind<CR>
nnoremap <D-1> :NERDTreeClose<CR>

" nnoremap <silent><C-e> :NERDTreeToggle<CR>
"nnoremap <F10> :VimFiler
"
" .vimrc|.gvimrcを素早く開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
" バッファ移動
nmap <C-l> :bn<CR>
nmap <C-h> :bp<CR>

nnoremap <silent> <Space>on  :only<CR>
" 行削除(Dでは無理っぽい）
nnoremap <D-K> dd<Up>

" TODO Com-shit-i VimFile
" TODO 強制的に保存する方法
"
 nnoremap <silent> <Space>ni  :NeoBundleInstall<CR>
 nnoremap <silent> <Space>nu  :NeoBundleUpdate<CR>
 nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
 nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>


 " Grep（プラグイン）
 nnoremap <silent> <Space>g  :Rgrep<CR>
 " 置換
 nnoremap <silent> <Space>r  :%s///gc
" コメントアウト
nmap <D-/> <Plug>(caw:i:toggle)
vmap <D-/> <Plug>(caw:i:toggle)


set scrolloff=5
" 検索にマッチしたすべてのテキストが ハイライト
set hlsearch

" TODO 再読み込みしないと反映されない？
" カレント行ハイライトON http://d.hatena.ne.jp/ryochack/20111029/1319913548
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE

" スニペットプラグイン設定
 " let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'
let g:neosnippet#snippets_directory=$HOME.'/snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"" ステータスラインを常に表示（編集中のファイル名が常に確認できるようになる）
set laststatus=2
" gitのブランチ名表示 http://marutanm.hatenablog.com/entry/20110706/p1
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"---------------------------------------------------------------------------
" 各種プラグインの設定
"---------------------------------------------------------------------------
" 隠しファイルをツリーに表示
let NERDTreeShowHidden = 1
" 隠しファイルもctrlp.vimの検索対象
let g:ctrlp_dotfiles = 1

"--------friendly-grep.vim setting START
let g:friendlygrep_recursively = 1
" 毎回「再帰検索する？」と聞かれるのがウザい場合はこれを設定すると聞いてこなくなります。
" 1 : 常に再帰検索
" 0 : 常に非再帰検索
" (デフォルトはnull、毎回聞いてきます)

let g:friendlygrep_display_result_in = 'quickfix'
" 検索結果の開き方を指定出来ます。
" 'tab' : 新規タブに表示
" 'split' : 現在のウィンドウを横分割して上に表示 (デフォルト)
" 'vsplit' : 現在のウィンドウを縦分割して左に表示
" 'quickfix' : 現在のウィンドウにquickfixリストと共に表示
"--------friendly-grep.vim setting END

if filereadable(expand('~/.vim/plugin/buftabs.vim'))
    let g:buftabs_only_basename=1
    " バッファタブをステータスライン内に表示する
    let g:buftabs_in_statusline=1
    " 現在のバッファをハイライト
    let g:buftabs_active_highlight_group="Visual"
    "let g:buftabs_separator = " "
    "let g:buftabs_marker_start = ""
    "let g:buftabs_marker_end = ""
    let g:buftabs_marker_modified = "+"
endif

" 起動時の履歴設定 vim-startify  http://mjhd.hatenablog.com/entry/recommendation-of-vim-startify
let g:startify_files_number = 5
let g:startify_list_order = [
        \ ['♻  最近使ったファイル:'],
        \ 'files',
        \ ['♲  最近使ったファイル(カレントディレクトリ下):'],
        \ 'dir',
        \ ['⚑  セッション:'],
        \ 'sessions',
        \ ['☺  ブックマーク:'],
        \ 'bookmarks',
        \ ]
let g:startify_bookmarks = ["~/.vimrc", "~/.gvimrc"]

" ASCII ARTを真ん中寄せする
" :h startifyを参照
function! s:filter_header(lines) abort
    let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
    let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
    return centered_lines
endfunction

" デフォルトだと、最近使ったファイルの先頭は数字なので、使用するアルファベットを指定
let g:startify_custom_indices = ['f', 'g', 'h', 'r', 'i', 'o', 'b']





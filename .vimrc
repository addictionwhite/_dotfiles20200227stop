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
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
" 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php {{{2
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'kmnk/vim-unite-giti.git'
NeoBundle 'gosukiwi/vim-atom-dark'
NeoBundle 'simeji/winresizer'
NeoBundle 'thinca/vim-quickrun'
" レジスタ履歴を利用したヤンク
"参考 http://leafcage.hateblo.jp/entry/2013/10/31/yankroundvim
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'thinca/vim-qfreplace.git'
NeoBundle 'jreybert/vimagit'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'MattesGroeger/vim-bookmarks'
NeoBundle 'rking/ag.vim'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'cohama/agit.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'open-browser.vim'
NeoBundle 'mbbill/undotree'
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
" カーソル配下の単語をハイライト
NeoBundle 'osyo-manga/vim-brightest'
NeoBundle 'Lokaltog/vim-easymotion'
" スニペット
" 参考http://qiita.com/koyopro/items/c473b3c2323501b7891a
NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet'
NeoBundle 'violetyk/neocomplete-php.vim'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'glidenote/memolist.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle "tyru/caw.vim.git"
NeoBundle 'open-browser.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/mru.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'sudo.vim'

" TODO 未設定
NeoBundle "scrooloose/syntastic"
" TODO 使い方
NeoBundle 'deris/vim-rengbang'
NeoBundle 'mattn/webapi-vim'

"NeoBundle 'L9'
"NeoBundle 'vim-scripts/FuzzyFinder'
" 別プラグインとぶつかってエラーになる https://github.com/vim-jp/issues/issues/584
" NeoBundle 'taichouchou2/html5.vim'
" NeoBundle 'taichouchou2/vim-javascript'
" NeoBundle 'akira-hamada/friendly-grep.vim'
" NeoBundle 'valloric/matchtagalways'
" NeoBundle 'vim-scripts/dbext.vim'
" NeoBundle 'AlessandroYorba/Alduin'
" NeoBundle 'jistr/vim-nerdtree-tabs'
" NeoBundle 'tyru/restart.vim'
" NeoBundle 'gregsexton/MatchTag'
" NeoBundle 'gregsexton/tgitv'
" NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'skammer/vim-css-color'
" NeoBundle 'osyo-manga/vim-over'

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
inoremap <D-l> <Right>

" 検索のハイライト取り消し
nnoremap <ESC><ESC> :nohlsearch<CR>

" easyMotion
nmap s <Plug>(easymotion-s2)
" Emmet
nmap <silent> <Space>em  :Emmet

"/yankround.vim'用キーマップ
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
" nmap <C-i> <Plug>(yankround-prev)
" nmap <C-n> <Plug>(yankround-next)
nmap pp <Plug>(yankround-prev)
nmap pb <Plug>(yankround-next)
""履歴一覧(kien/ctrlp.vim)
nnoremap <silent>pl :<C-u>CtrlPYankRound<CR>

" Web検索
nnoremap <silent> <Space>ob :OpenBrowserSearch
nnoremap <silent> <Space>go :OpenBrowserSearch

"---------------Git---------------
nnoremap <silent> <Space>gl :GitiLog<CR>
nnoremap <silent> <Space>gp :Gpull<CR>
nnoremap <silent> <Space>gd :Gdiff<CR>
nnoremap <silent> <Space>gb :Gblame<CR>
nnoremap <silent> <Space>gs :Gstatus<CR>
nnoremap <silent> <Space>gr : :Gread<CR>

" 次の差分箇所に移動
nmap <C-j> <Plug>(signify-next-hunk)zz
" 前の差分箇所に移動
nmap <C-k> <Plug>(signify-prev-hunk)zz
" 差分箇所をハイライト
nmap <Space>gh <Plug>(signify-toggle-highlight)
" 差分表示をトグルする(:SignifyToggleコマンドと同じ)
nmap <Space>gt <Plug>(signify-toggle)

" 履歴閲覧プラグイン(Exから叩いて良い気がする）
nnoremap <silent> <Space>ag : :Agit<CR>
" gitクライアント(Exから叩いて良い気がする）
nnoremap <silent> <Space>mg : :Magit<CR>

" 行ブックマーク NeoBundle 'MattesGroeger/vim-bookmarks'
nmap <D-F2> <Plug>BookmarkToggle
nmap <silent> <Space>bl  <Plug>BookmarkShowAll
nmap <F2> <Plug>BookmarkNext
" nmap <S-F2> <Plug>BookmarkPrev
" nmap <Space>x <Plug>BookmarkClearAll
"

nnoremap <A-F1> :NERDTreeFind<CR>
nnoremap <D-1> :NERDTreeClose<CR>
nmap <silent> <F1> :TagbarToggle<CR>
"
" .vimrc|.gvimrcを素早く開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
 " TODO hosts ファイルetc
 "
" バッファ移動
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>

nmap <D-I> :VimFilerBufferDir<CR>

nnoremap <silent> <Space>on  :only<CR>
" 行削除(Dでは無理っぽい）
nnoremap <D-K> dd
inoremap <D-K> :d

" TODO com+Nのキーマップ 候補
" TODO fNのキーマップ 候補
"登録済み nnoremap <D-1> :NERDTreeClose<CR>
nnoremap <D-3> :Magit<CR>
" nnoremap <F3> :Agit<CR>
nnoremap <F3> :MRU<CR>

nnoremap <silent> <Space>ni  :NeoBundleInstall<CR>
nnoremap <silent> <Space>nu  :NeoBundleUpdate<CR>
nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>

" バッファ削除
" nnoremap <silent> <Space>bd  :bd<CR>
nnoremap <C-w>b  :bd<CR>

 "---------------検索,置換---------------
 " Ag(Grep)
 nnoremap <silent> <Space>g   :Ag
 nmap <C-n>  :cn<CR>
 nmap <C-p>  :cp<CR>

 " カーソル配下の単語でAg
nnoremap <expr> g* ':Ag ' . expand('<cword>')
vnoremap <expr> g* ':Ag ' . expand('<cword>')
" カーソル配下の単語で置換(memo:gcで確認しながら繰り返し置換
nnoremap <expr> r* ':%s ;\<' . expand('<cword>') . '\>;'
vnoremap <expr> r* ':s ;\<' . expand('<cword>') . '\>;'
" カーソル配下の単語検索
nnoremap <expr> f* '/' . expand('<cword>')
vnoremap <expr> f* '/' . expand('<cword>')

nnoremap /  /\v

 "------------------------------

" コメントアウト
nmap <D-/> <Plug>(caw:i:toggle)
vmap <D-/> <Plug>(caw:i:toggle)

" 検索にマッチしたすべてのテキストが ハイライト
set hlsearch

" スニペットプラグイン設定
"  " let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'
" let g:neosnippet#snippets_directory=$HOME.'/snippets'
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

"" ステータスラインを常に表示（編集中のファイル名が常に確認できるようになる）
set laststatus=2
" gitのブランチ名表示 http://marutanm.hatenablog.com/entry/20110706/p1
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"---------------------------------------------------------------------------
" 各種プラグインの設定
"---------------------------------------------------------------------------
" 隠しファイルをツリーに表示
let NERDTreeShowHidden = 1

" デフォルトのマッピングを無効化(default:'<C-p>')
" let g:ctrlp_map = '<Nop>'
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("p")': ['<c-i>'],
    \ }

" 再起動しないと反映されない？
let g:ctrlp_map = '<D-O>'
" 隠しファイルもctrlp.vimの検索対象
let g:ctrlp_dotfiles = 1

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

" メモプラグイン memolist.vim settings
let g:memolist_path = "~/Dropbox/vim/memolist"
let g:memolist_template_dir_path = "~/.vim/template/memolist"
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>

"---------------------------------------------------------------------------
" 簡易スニペット(1行のみ）neocomplcache*キー+Tabでシンプルに出力させるため
"---------------------------------------------------------------------------
inoremap v<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/tmp/mylog/debug.log'); //TODO2<C-c>
inoremap fe<TAB> foreach ($arr as $value) {}<C-c>
inoremap fu<TAB> function test() {}<C-c>

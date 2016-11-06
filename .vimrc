" :vimgrepに加えて:grep、:Ggrepでも自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow

" :vimgrepに加えて:grep、:Ggrepでも自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow

"-------- vim-plug START --------
call plug#begin('~/.vim/plugged')


Plug 'editorconfig/editorconfig-vim'

Plug 'vim-scripts/vim-svngutter'
Plug 'vim-scripts/vcscommand.vim'

Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php 
"
Plug 'Shougo/neocomplete.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'andreasvc/vim-256noir'
Plug 'sickill/vim-monokai'
Plug 'maciakl/vim-neatstatus'

" TODO
" Plug 'vim-scripts/TaskList.vim'
Plug 'dkprice/vim-easygrep'

Plug 'vim-scripts/BufOnly.vim'
Plug 'simeji/winresizer'  " ウィンドウサイズ変更
Plug 'thinca/vim-quickrun'

Plug 'thinca/vim-qfreplace' " grep 結果を置換
Plug 'MattesGroeger/vim-bookmarks'
Plug 'rking/ag.vim'
Plug 'mhinz/vim-signify'

Plug 'mbbill/undotree'

Plug 'Shougo/vimshell.vim'
Plug 'scrooloose/nerdtree'

Plug 'osyo-manga/vim-brightest' " カーソル配下の単語をハイライト
Plug 'Lokaltog/vim-easymotion'

Plug 'mhinz/vim-startify'
Plug 'glidenote/memolist.vim'
Plug 'joshdick/onedark.vim'
Plug 'troydm/easybuffer.vim'

Plug 'tyru/caw.vim' " コメントアウト 
Plug 'vim-scripts/mru.vim'
Plug 'rbgrouleff/bclose.vim'

Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'

Plug 'whatyouhide/vim-gotham'
Plug 'vim-scripts/copypath.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'airblade/vim-rooter'

Plug 'vexxor/phpdoc.vim'
Plug 'fuenor/qfixgrep'

call plug#end()
"-------- vim-plug END --------


"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------
" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 行削除(Dでは無理っぽい）
nnoremap <C-K> dd
inoremap <C-K> <ESC>ddi
vnoremap <C-K> dd


" easyMotion
nmap s <Plug>(easymotion-s2)


" 行ブックマーク Plug 'MattesGroeger/vim-bookmarks'
" nmap <D-F2> <Plug>BookmarkToggle
nmap <C-F2> <Plug>BookmarkToggle
nmap <silent> <Space>bl  <Plug>BookmarkShowAll
nmap <F2> <Plug>BookmarkNext
nmap <S-F2> <Plug>BookmarkPrev
nmap <Space>bc <Plug>BookmarkClearAll


" タブ切り替え
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprev<CR>
" タブ作成削除 
nmap <C-w>n :enew<CR>

" ウィンドウを維持してバッファを閉じる Plug 'rbgrouleff/bclose.vim'1
nmap <C-w>c :Bclose<CR>
" タブ一覧
nnoremap <Space>eb :EasyBuffer<CR>
" すべてのバッファを閉じる（Vimは閉じない）
" nnoremap <silent> <Space>q  :%b<CR>
" 自分以外のバッファを閉じる
nnoremap <silent> <Space>bo  :BufOnly<CR>
" 自分以外のウィンドウを閉じる
nnoremap <silent> <Space>on  :only<CR>


" ファイルパス、ファイル名称取得
nnoremap <silent> <Space>cp  :CopyPath<CR>
nnoremap <silent> <Space>cf  :CopyFileName<CR>
nnoremap <silent> <Space>cc  :CdCurrent<CR>
" finderで開く
nnoremap <silent> <Space>op  :! explorer .<CR>
" 開いているファイルのリネーム(" :Rename! で強制変更) http://d.hatena.ne.jp/fuenor/20100115/1263551230
command! -nargs=+ -bang -complete=file Rename let pbnr=fnamemodify(bufname('%'), ':p')|exec 'f '.escape(<q-args>, ' ')|w<bang>|call delete(pbnr)
nnoremap <silent> <Space>rn  :Rename 

" メモプラグイン
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>

" Emmet
nmap <silent> <Space>em  :Emmet
" json整形
nnoremap <silent> <Space>jq  ::%!jq '.'<CR>


" コメントアウト
nmap <C-/> <Plug>(caw:i:toggle)
vmap <C-/> <Plug>(caw:i:toggle)


" プラグイン更新
nnoremap <silent> <Space>pi  :PlugInstall<CR>
nnoremap <silent> <Space>pu  :PlugUpdate<CR>
" .設定ファイルを開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
nnoremap <silent> <Space>el  :<C-u>edit ~/Dropbox/vim/vimrc_local<CR>
" 設定再読み込み
nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>


nnoremap <silent> <Space>e :e ./**/ 

nnoremap <silent> <Space>r :%s/b/a/gc
nnoremap <silent> <Space>gr :vimgrep /hoge/j **/*.txt | cw



" プレビューを有効にする
let QFixWin_EnableMode = 3

" ctags設定
nnoremap <D-M> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
nnoremap <silent> <Space>tg :TagsGenerate<CR>


" isdirectory
if isdirectory(expand($HOME.'/Dropbox/vim/snippets'))
    let g:neosnippet#snippets_directory=$HOME.'/Dropbox/vim/snippets'
    " スニペットプラグイン設定
    imap <D-i>     <Plug>(neosnippet_expand_or_jump)
    smap <D-i>     <Plug>(neosnippet_expand_or_jump)
    xmap <D-i>     <Plug>(neosnippet_expand_target)
endif

"---------------------------------------------------------------------------
		 +" 簡易スニペット(1行のみ）neocomplcache*キー+Tabでシンプルに出力させるため
 "---------------------------------------------------------------------------
 inoremap v<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/tmp/mylog/debug.log'); //TODO<C-c>
 inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, 'C:\MyLog\debug.log'); //TODO<C-c>
 inoremap fe<TAB> foreach ($arr as $value) {}<C-c>
 inoremap fu<TAB> function test() {}<C-c>



"---------------------------------------------------------------------------
" 各種プラグインの設定
"---------------------------------------------------------------------------
" 隠しファイルをツリーに表示
let NERDTreeShowHidden = 1


" 自動改行オフ http://kaworu.jpn.org/kaworu/2007-07-29-1.php
set tw=0




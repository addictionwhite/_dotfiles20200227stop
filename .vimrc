" :vimgrepに加えて:grep、:Ggrepでも自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *ag* cwindow


"-------- vim-plug START --------
call plug#begin('~/.vim/plugged')
" Plug 'majutsushi/tagbar'

" color 
Plug 'gosukiwi/vim-atom-dark'
Plug 'andreasvc/vim-256noir'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'dunckr/vim-monokai-soda'
Plug 'rhysd/vim-color-shiny-white'
Plug 'arcticicestudio/nord-vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'Reewr/vim-monokai-phoenix'
Plug 'kudabux/vim-srcery-drk'
Plug 'vim-scripts/twilight'
Plug 'yuttie/hydrangea-vim'
Plug 'skielbasa/vim-material-monokai'
Plug 'cocopon/iceberg.vim'
Plug 'jacoborus/tender.vim'
" Plug 'altercation/vim-colors-solarized'

Plug 'sts10/vim-pink-moon'
Plug 'phanviet/vim-monokai-pro'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'jdsimcoe/abstract.vim'

" 編集
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
"
"
Plug 'Townk/vim-autoclose'

"VCS 
Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify' " TODO 保存時に変えられる？
Plug 'vim-scripts/vcscommand.vim'
Plug 'codeindulgence/vim-tig'
Plug 'airblade/vim-gitgutter'
" Plug 'vim-scripts/vim-svngutter'
"
Plug 'cohama/agit.vim'
" Plug 'kmnk/vim-unite-giti'

Plug 'rhysd/committia.vim' " vital.vimに依存
Plug 'vim-jp/vital.vim'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
" Plug 'idanarye/vim-merginal'
Plug 'jreybert/vimagit'

" 表示
Plug 'simeji/winresizer'  " ウィンドウサイズ変更
Plug 'Yggdroot/indentLine'
Plug 'osyo-manga/vim-brightest' " カーソル配下の単語をハイライトTODO_tmp
" TODO
" Plug 'Shougo/neocomplete.vim' " 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php 
Plug 'tyru/current-func-info.vim' " 表示している関数名表示
Plug 'haya14busa/incsearch.vim' " 検索中の文字列をハイライト
Plug 'vim-scripts/vim-signature' " マーク位置の表示
Plug 'elzr/vim-json' 
Plug 't9md/vim-quickhl' " 指定の単語をハイライト

Plug 'termoshtt/toggl.vim'
Plug 'myrobo/smart_tabline.vim'

Plug 'vim-scripts/sessionman.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mechatroner/rainbow_csv'
Plug 'AndrewRadev/linediff.vim'

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'fuenor/qfixgrep' " QuickFixの拡張 TODO
Plug 'thinca/vim-qfreplace' " grep 結果を置換
" Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'

Plug 'fuenor/qfixgrep'
Plug 'osyo-manga/vim-over'
" Plug 'osyo-manga/vim-anzu'
Plug 'wsdjeg/FlyGrep.vim'

" バッファ操作
Plug 'vim-scripts/BufOnly.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'vim-scripts/copypath.vim'
Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
Plug 'qpkorr/vim-bufkill'
" 移動
Plug 'Lokaltog/vim-easymotion'
Plug 'rhysd/clever-f.vim'
"Plug 'rhysd/accelerated-jk'

Plug 'scrooloose/nerdtree'

 Plug 'vim-scripts/mru.vim' " denite file_old source　で対応可能
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'MattesGroeger/vim-bookmarks'
" Plug 'troydm/easybuffer.vim'

Plug 'szw/vim-tags'
Plug 't9md/vim-choosewin'

Plug 'vim-scripts/gtags.vim'

" Plug 't9md/vim-chef'

" その他
Plug 'thinca/vim-quickrun'
Plug 'editorconfig/editorconfig-vim'
Plug 'tyru/restart.vim'
" Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neomru.vim'

Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'skywind3000/asyncrun.vim'

Plug 'Shougo/deoplete.nvim'

"Plug 'aquach/vim-http-client'
"Plug 'diepm/vim-rest-console
"
"PHP
" Plug 'vim-scripts/PDV--phpDocumentor-for-Vim'
" language
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'
Plug 'sumpygump/php-documentor-vim'

Plug 'vim-vdebug/vdebug'
Plug 't9md/vim-chef'

" 後で二つ消す
Plug 'vim-scripts/Align'
Plug 'vim-scripts/SQLUtilities'

" Plug 'vexxor/phpdoc.vim'
" Plug 'vim-scripts/php_localvarcheck.vim' 特定の関数でエラーを吐く
"
" Plug 'flyinshadow/php_localvarcheck.vim'
"
" Plug 'beanworks/vim-phpfmt'
"

" TODO  有用だけどビューの保存時あまりに遅い　
 Plug 'bpearson/vim-phpcs'
 Plug 'beanworks/vim-phpfmt'

 "Plug 'wsdjeg/FlyGrep.vim'
 Plug 'fuenor/qfixhowm'

 Plug 'vim-jp/vimdoc-ja'

" TODO docker環境だからか動作せず
" Plug 'vim-scripts/dbext.vim'

call plug#end()
"-------- vim-plug END --------

"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------
"terminalモード中ESCでcommand mode
tnoremap <silent> <ESC> <C-\><C-n>
"
" セミコロンでノーマルモードに移行
" nnoremap ; :
" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
" 挿入モードでのカーソル移動
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>

" 行削除(Dでは無理っぽい）
" nnoremap <C-K> dd
" inoremap <C-K> <ESC>ddi
" vnoremap <C-K> dd

" easyMotion
nmap s <Plug>(easymotion-s2)
nmap <silent> <Space>j <Plug>(easymotion-j)
nmap <silent> <Space>k <Plug>(easymotion-k)




" TODO　あとで整理 https://github.com/easymotion/vim-easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)



" vimGrep 切り替え
"  カレントバッファを対象にする
"  :vim {pattern} %
nnoremap [q :cp<CR>   " 前へ
nnoremap ]q :cn<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ

" ウィンドウを維持してバッファを閉じる Plug 'rbgrouleff/bclose.vim'1
nmap <C-w>c :Bclose<CR>

" バッファ一覧
" nnoremap <Space>eb :EasyBuffer<CR>
" nnoremap <Space>bs :buffers<CR>
" バッファ作成
nmap <C-w>n :enew<CR>
" 自分以外のバッファを閉じる
nnoremap <silent> <Space>bo  :BufOnly<CR>
" 自分以外のウィンドウを閉じる
nnoremap <silent> <Space>on  :only<CR>
" すべてのバッファを閉じる（Vimは閉じない）
" nnoremap <silent> <Space>q  :%b<CR>


" ファイルパス、ファイル名称取得
nnoremap <silent> <Space>cp  :CopyPath<CR>
nnoremap <silent> <Space>cf  :CopyFileName<CR>
nnoremap <silent> <Space>cc  :CdCurrent<CR>
" finderで開く
"nnoremap <silent> <Space>op  :! explorer .<CR>
nnoremap <silent> <Space>op  :! open .<CR>
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

nnoremap <Space>sf :CtrlSF 

nnoremap <silent> <Space>hr  :GitGutterUndoHunk<CR>


" プラグイン更新
nnoremap <silent> <Space>pi  :PlugInstall<CR>
nnoremap <silent> <Space>pu  :PlugUpdate<CR>
" .設定ファイルを開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
" nnoremap <silent> <Space>el  :<C-u>edit ~/Dropbox/vim/vimrc_local<CR>
" 設定再読み込み
 nnoremap <silent> <Space>sv  :source ~/.vim/init.vim<CR>
" nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
" nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>

" nnoremap <silent> <Space>e :e ./**/ 
nnoremap <silent> <Space>r :%s/b/a/gc
nnoremap <silent> <Space>gr :vimgrep /hoge/j **/*.txt | cw


" nnoremap <silent> <Space>p :CtrlPCurWD<CR>
" nnoremap <silent> <Space>p  :cd C:\zendTest\trunk\04_Implementation<CR> :CtrlPCurWD<CR>
nnoremap <silent> <Space>cd  :cd C:\zendTest\trunk\04_Implementation<CR>

nnoremap <silent> <Space>f  :FZF<CR>


" inoremap <C-I> <Esc>:call PhpDocSingle()<CR>i
" nnoremap <C-I> :call PhpDocSingle()<CR>
" vnoremap <C-I> :call PhpDocSingle()<CR>


" ctags設定
" nnoremap <D-M> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
nnoremap <silent> <Space>tg :TagsGenerate<CR>

" quickfix
" http://thinca.hatenablog.com/entry/20130708/1373210009
" preview
" noremap <buffer> p  <CR>zz<C-w>p
" ヒット数をステータスラインに表記
"
" setlocal statusline+=\ %L

nnoremap <silent> <Space>nf :NERDTreeFind<CR>
nnoremap <silent> <Space>nc :NERDTreeClose<CR>

" Unite 
" nnoremap <silent> <Space>gb :Unite giti/branch<CR>

nnoremap gp :cprevious<CR>   " 前へ
nnoremap gn :cnext<CR>       " 次へ


" vimrcにこちらのコード1行を追加すれば「,f」コマンドでON/OFFできるようになりかなり快適です。
noremap <silent> ,f :if exists("g:syntax_on")\|syntax off\|else\|syntax enable\|endif<CR>


"単語を色マーク
nmap <Space>h <Plug>(quickhl-manual-this)
xmap <Space>h <Plug>(quickhl-manual-this)
nmap <Space>H <Plug>(quickhl-manual-reset)
xmap <Space>H <Plug>(quickhl-manual-reset)


" isdirectory
if isdirectory(expand($HOME.'/Dropbox/vim/snippets'))
    let g:neosnippet#snippets_directory=$HOME.'/Dropbox/vim/snippets'
    " スニペットプラグイン設定
    imap <D-i>     <Plug>(neosnippet_expand_or_jump)
    smap <D-i>     <Plug>(neosnippet_expand_or_jump)
    xmap <D-i>     <Plug>(neosnippet_expand_target)
endif

"---------------------------------------------------------------------------
" 簡易スニペット(1行のみ）*キー+Tabでシンプルに出力させるため
"---------------------------------------------------------------------------
" CentOS7だとtmpにログ吐き出せない？
  inoremap r<TAB> \Log::debug((print_r($aaa,true))); //TODO_0958509280948320948023<C-c>
  " :g/abc/d
  nnoremap <silent> <Space>ld  :<C-u>g/TODO_0958509280948320948023/d <CR>

  inoremap l<TAB> \Log::debug((print_r($aaa,true))); //TODO_0958509280948320948023<C-c>
  "inoremap ll<TAB> \Log::debug((print_r($aaa,true))); //TODO<C-c>
  " inoremap ll<TAB> print_r($aaa,true); //TODO<C-c>
  inoremap ll<TAB> Log::write('Debug', print_r($aaa,true));// TODO<C-c>

  inoremap lq<TAB> \Log::debug((print_r(\DB::last_query(),true))); //TODO<C-c>
 "inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/var/www/html/laravel/storage/logs/debug.log'); //TODO<C-c>
 "inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/tmp/debug.log'); //TODO<C-c>
 "inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/tmp/debug.log'); //TODO<C-c>
 "inoremap l<TAB> Log::debug(); //TODO<C-c>
 "inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, 'C:\tmp\debug.log'); //TODO

"---------------------------------------------------------------------------
" 各種プラグインの設定
"---------------------------------------------------------------------------
" 隠しファイルをツリーに表示
let NERDTreeShowHidden = 1
" プレビューを有効にする
let QFixWin_EnableMode = 3
" 無視設定
let g:NERDTreeIgnore=['\.DS_Store$']
" 表示
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


"let g:php_localvarcheck_enable = 1
" let g:php_localvarcheck_global = 0


" vimRepeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


command! JsonFormat :execute '%!python -m json.tool'
  \ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)), sys.stdin.read()))"'
  \ | :%s/ \+$//ge
  \ | :set ft=javascript
  \ | :1



set backspace=indent,eol,start

" ファイル保存時にPHPの構文チェック http://kannokanno.hatenablog.com/entry/20120716/1342428418
augroup PHP
  autocmd!
  autocmd FileType php set makeprg=php\ -l\ %
  " php -lの構文チェックでエラーがなければ「No syntax errors」の一行だけ出力される
  autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
augroup END


"  Jsonのダブルクォーテーション表示 'elzr/vim-json'
"  https://qiita.com/karur4n/items/a26007236c59c5fb8735#vim-json-%E5%85%A5%E3%82%8C%E3%82%88%E3%81%86
let g:vim_json_syntax_conceal = 0

" clever-f.vimのmigemo っぽい検索(日本語もfの検索にヒットさせる）https://rhysd.hatenablog.com/entry/2013/09/17/220837
let g:clever_f_use_migemo=1

"--------------------------------
"        nvim            
"--------------------------------
" マウス有効
set mouse=a 
"-------------------------------------------------------------------------------
" システム設定
"-------------------------------------------------------------------------------
set shortmess+=I     " 起動時のメッセージを表示しない
set noerrorbells     " エラー音抑止(gvimはgvimrcで指定)
set novisualbell     " ビジュアルベル抑止(gvimはgvimrcで指定)
set visualbell t_vb= " ビープ音抑止(gvimはgvimrcで指定)

set viminfo=

" インサートモードから抜けると自動的にIMEをオフにする macvim
" set iminsert=2
 
" コマンドモードに戻るときにIMEをオフにする
"set imdisable
" 挿入モードでバックスペースやCtrl-hを押しても何も反応がない場合の対処法
"set backspace=indent,eol,start
"-------------------------------------------------------------------------------
" エンコーディング設定
"---------------------------------------------------------------------------
set encoding=utf-8
" set fileencodings=iso-2022-jp,iso-2022-jp-2,utf-8,euc-jp,sjis
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決

" set fileencoding=utf-8  " 基本文字コード
" set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
" set fileencodings=utf-8,cp932 " 文字コード自動判別(優先順)

"-------------------------------------------------------------------------------
" 表示設定
"---------------------------------------------------------------------------
set showmatch         " 対応する括弧を強調表示
"set ruler             " 右下に行・列の番号を表示
set title             " タイトル表示
" タブページのラインが常に表示
set showtabline=2


" 左右のスクロールバーを非表示にする
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
" 水平スクロールバーを非表示にする
"set guioptions-=b
" 水平スクロール表示
set guioptions+=b
" ツールバー非表示
set guioptions-=T


"terminalからnvim使う場合はitermのフォントを変えること
  set guifont=Ricty_Diminished:h16 " フォント
set list  " 不可視文字を表示する
" set listchars=tab:≫-,trail:-,extends:≫,precedes:≪,nbsp:%,eol:?

" 長いテキストで重くなる現象を回避
set synmaxcol=200

" ------------------------------------
" colorscheme
" ------------------------------------
 colorscheme monokai 

"IMEでカーソル色(colorの定義の後に配置する必要あり？
"---------------------------------
if has('multi_byte_ime')
    highlight Cursor guifg=NONE guibg=Blue
    highlight CursorIM guifg=NONE guibg=Red
endif
"-------------------------------------------------------------------------------
" 編集
"---------------------------------------------------------------------------
set infercase      " 補完の際の大文字小文字の区別しない
set cmdheight=2    " メッセージ表示欄を2行確保
set tabstop=4      " 画面上でタブ文字が占める幅
" set autoindento    " 改行時に前の行のインデントを継続する
set expandtab      "タブ入力を複数の空白入力に置き換える
set shiftwidth=4   " 自動インデントでずれる幅
set nowrap         " 長い行を折り返さない
" 自動改行オフ http://kaworu.jpn.org/kaworu/2007-07-29-1.php
set tw=0

set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない


set clipboard=unnamed " クリップボード共有

" 各ファイルによってインデントの深さを変える http://qiita.com/mitsuru793/items/2d464f30bd091f5d0fef
"  augroup fileTypeIndent
"      autocmd!
"      autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
"      autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
"      autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
"      autocmd BufNewFile,BufRead *.tpl setlocal tabstop=2 softtabstop=2 shiftwidth=2
"  augroup END

"-------------------------------------------------------------------------------
" 検索/置換設定
"-------------------------------------------------------------------------------
set ignorecase   " 大/小文字無視
set smartcase    " ただし大文字を含む検索の場合は大/小文字有効
set incsearch    " インクリメンタルサーチ有効
set hlsearch     " 検索結果ハイライト表示
" set wrapscan     " 検索をファイルの先頭へループする
" set gdefault     " 置換の時 g オプションをデフォルトで有効

"-------------------------------------------------------------------------------
" コマンドライン
"---------------------------------------------------------------------------
" TABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
"esc連打でハイライトをオフ
nnoremap <silent> <ESC><ESC> :noh<CR>


source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim


" 非同期実行
augroup MyGroup
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END


" 外部ファイル定義用
if filereadable(expand($HOME.'/.vimrc_local'))
  source $HOME/.vimrc_local
endif


nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>

autocmd FileType php :set dictionary+=~/.vim/php.dict

" グローバルのチェック不要
let g:php_localvarcheck_enable = 1
let g:php_localvarcheck_global = 0


let g:deoplete#enable_at_startup = 1
" エンターキーで補完選択
inoremap <silent><expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"


" Plug 'sumpygump/php-documentor-vim'
" class の場合は class の行で、function の場合は function が記述してある行で Ctrl + P で自動でひな形が入る。
" http://blog.beta-desu.info/2013/04/18/phpdoc+vim/
" inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
" nnoremap <C-P> :call PhpDocSingle()<CR> 
" vnoremap <C-P> :call PhpDocRange()<CR> 


" TABキーを押した際にタブ文字の代わりにスペースを入れる
 set expandtab
 set tabstop=4
 set shiftwidth=4

" https://qiita.com/qtamaki/items/4da4ead3f2f9a525591a
" bufferを切り替える時に保存しなくても良い
set hidden


" over.vimの起動
" https://qiita.com/syui/items/3a1af1301ee197b32a8a
nnoremap <silent> <Leader>m :OverCommandLine<CR>
nnoremap <silent> <Space>s :OverCommandLine<CR>
" カーソル下の単語をハイライト付きで置換
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
" コピーした文字列をハイライト付きで置換
nnoremap subp y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!', 'g')<CR>!!gI<Left><Left><Left>


nmap <C-p>  gt<CR> 
nmap <C-q>  gt<CR> 
map <Tab>  gt<CR>
map <S-Tab>  gT<CR>

nnoremap ww <C-w>w
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wh <C-w>h

nnoremap wt <C-w>t
nnoremap wb <C-w>b


" 権限が無いファイルを管理者権限で保存する
" :w !sudo tee %

" invoke with '-'
nmap  -  <Plug>(choosewin)

" オーバーレイ機能を有効にしたい場合
let g:choosewin_overlay_enable          = 1
" オーバーレイ・フォントをマルチバイト文字を含むバッファでも綺麗に表示する。
let g:choosewin_overlay_clear_multibyte = 1


map <C-j> :GtagsCursor<CR>
map <C-g> :Gtags


"nmap ; :Buffers
nmap ; :Buffers<CR>
nmap t :Files
nmap r :Tags


" :BD TODO バッファを削除


" https://gist.github.com/pinzolo/8168337
" 指定のデータをレジスタに登録する
function! s:Clip(data)
  let @*=a:data
  echo "clipped: " . a:data
endfunction

" 現在開いているファイルのパスをレジスタへ
command! -nargs=0 ClipPath call s:Clip(expand('%:p'))
" 現在開いているファイルのファイル名をレジスタへ
command! -nargs=0 ClipFile call s:Clip(expand('%:t'))
" 現在開いているファイルのディレクトリパスをレジスタへ
command! -nargs=0 ClipDir  call s:Clip(expand('%:p:h'))


" ファイルタイプ関連を有効にする
filetype plugin indent on



let g:phpfmt_autosave = 0


" カレント行ハイライトON
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE
" http://d.hatena.ne.jp/ryochack/20111029/1319913548


" https://postd.cc/vim3/
" https://github.com/statico/dotfiles/blob/master/.vim/vimrc
" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'
nmap ]g :GitGutterNextHunk<CR>
nmap [g :GitGutterPrevHunk<CR>
augroup VimDiff
  autocmd!
  autocmd VimEnter,FilterWritePre * if &diff | GitGutterDisable | endif
augroup END



command! -bang -nargs=+ Gitgrep call fzf#run({
      \ 'source': 'git grep -n -I -i <args>',
      \ 'sink': function('s:line_handler'),
      \ 'dir': s:get_git_base_path(expand("%:p:h")),
      \ 'up': '~40%',
      \ 'options': '+m'
      \ })

" .gitディレクトリがあるパスを取得する
function! s:get_git_base_path(current_dir) abort
  if isdirectory(expand(a:current_dir . '/.git'))
    return a:current_dir
  else
    let sp_dir = split(a:current_dir, '/')
    call remove(sp_dir, -1)
    return s:get_git_base_path('/' . expand(join(sp_dir, '/')))
  endif
endfunction

" 行が選択された時の動き
function! s:line_handler(line)
  let keys = split(a:line, ':')
  " path
  exec 'e '. keys[0]
  " line
  exec keys[1]

  normal! ^zz
endfunction



" air line start

let g:airline#extensions#tabline#enabled = 1
" Powerline系フォントを利用する
let g:airline_powerline_fonts = 1
" タブバーのカスタマイズを有効にする
let g:airline#extensions#tabline#enabled = 1
" タブバーの右領域を非表示にする
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
 
"左側に使用されるセパレータ
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
"右側に使用されるセパレータ
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'		"暗号化されたファイル
let g:airline_symbols.linenr = '¶'			"行
let g:airline_symbols.maxlinenr = '㏑'		"最大行
let g:airline_symbols.branch = '⭠'		"gitブランチ
let g:airline_symbols.paste = 'ρ'			"ペーストモード
let g:airline_symbols.spell = 'Ꞩ'			"スペルチェック
let g:airline_symbols.notexists = '∄'		"gitで管理されていない場合
let g:airline_symbols.whitespace = 'Ξ'	"空白の警告(余分な空白など)

" air line end
"

" :call HelloFunc() で呼び出し
:function! HelloFunc()
    :echo "Hello World"
    :let a = system("ls")
    :echo a
:endfunction

nnoremap <silent> <Space>he  :<C-u>call HelloFunc()<CR>

"--------------

:function! ToggleGitCheckout()
    " :echo system("git status")
    :echo system("git checkout -")
:endfunction
nnoremap <silent> <Space>gh  :<C-u>call ToggleGitCheckout()<CR>

"--------------
"TODO vimscriptのアイデア
"TODO leader定義

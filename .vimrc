" :vimgrepに加えて:grep、:Ggrepでも自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *ag* cwindow


"-------- vim-plug START --------
call plug#begin('~/.vim/plugged')

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

" 編集
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-repeat'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'bpearson/vim-phpcs'
" Plug 'beanworks/vim-phpfmt'

"VCS 
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'vim-scripts/vcscommand.vim'
Plug 'codeindulgence/vim-tig'
" Plug 'vim-scripts/vim-svngutter'
"
Plug 'cohama/agit.vim'
Plug 'kmnk/vim-unite-giti'

Plug 'rhysd/committia.vim'
Plug 'gregsexton/gitv'

" Plug 'idanarye/vim-merginal'

" 表示
Plug 'simeji/winresizer'  " ウィンドウサイズ変更
Plug 'Yggdroot/indentLine'
Plug 'osyo-manga/vim-brightest' " カーソル配下の単語をハイライト
Plug 'Shougo/neocomplete.vim' " 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php 
Plug 'tyru/current-func-info.vim' " 表示している関数名表示
Plug 'haya14busa/incsearch.vim' " 検索中の文字列をハイライト
Plug 'vim-scripts/vim-signature' " マーク位置の表示
Plug 'elzr/vim-json' 
Plug 't9md/vim-quickhl' " 指定の単語をハイライト

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'fuenor/qfixgrep' " QuickFixの拡張 TODO
Plug 'thinca/vim-qfreplace' " grep 結果を置換
" Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'

Plug 'fuenor/qfixgrep'
Plug 'osyo-manga/vim-over'
" Plug 'osyo-manga/vim-anzu'

" バッファ操作
Plug 'vim-scripts/BufOnly.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'vim-scripts/copypath.vim'
Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
" 移動
Plug 'Lokaltog/vim-easymotion'
Plug 'rhysd/clever-f.vim'

Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/mru.vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'MattesGroeger/vim-bookmarks'
Plug 'troydm/easybuffer.vim'

Plug 'szw/vim-tags'

" その他
Plug 'thinca/vim-quickrun'
Plug 'editorconfig/editorconfig-vim'
Plug 'tyru/restart.vim'
Plug 'Shougo/unite.vim'
Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'skywind3000/asyncrun.vim'


"Plug 'aquach/vim-http-client'
"Plug 'diepm/vim-rest-console
"
"PHP
" Plug 'vim-scripts/PDV--phpDocumentor-for-Vim'
" language
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'

Plug 'vim-vdebug/vdebug'

" TODO Js NOdeJs php 
" Plug 'vexxor/phpdoc.vim'
" Plug 'vim-scripts/php_localvarcheck.vim' 特定の関数でエラーを吐く
" Plug 'beanworks/vim-phpfmt'

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
nmap <silent> <Space>j <Plug>(easymotion-j)
nmap <silent> <Space>k <Plug>(easymotion-k)

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
nnoremap <Space>eb :EasyBuffer<CR>
nnoremap <Space>bs :buffers<CR>
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

" 画面サイズ変更
nnoremap <Space>wm : set columns=999<CR>:set lines=999<CR>
nnoremap <Space>ws : set columns=100<CR>:set lines=30<CR>

nnoremap <Space>sf :CtrlSF 


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
nnoremap <D-M> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
nnoremap <silent> <Space>tg :TagsGenerate<CR>

" quickfix
" http://thinca.hatenablog.com/entry/20130708/1373210009
" preview
noremap <buffer> p  <CR>zz<C-w>p
" ヒット数をステータスラインに表記
setlocal statusline+=\ %L
" 一番下に行ったら一番上に、一番上に行ったら一番下に移動
"   *(最初に立ち上がった新規バッファでjkを押すとエラーが出力される
"noremap <silent> <buffer> <expr> j <SID>jk(v:count1)
"noremap <silent> <buffer> <expr> k <SID>jk(-v:count1)


nnoremap <silent> <Space>nf :NERDTreeFind<CR>
nnoremap <silent> <Space>nc :NERDTreeClose<CR>

" Unite 
nnoremap <silent> <Space>gb :Unite giti/branch<CR>

nnoremap gp :cprevious<CR>   " 前へ
nnoremap gn :cnext<CR>       " 次へ


" vimrcにこちらのコード1行を追加すれば「,f」コマンドでON/OFFできるようになりかなり快適です。
noremap <silent> ,f :if exists("g:syntax_on")\|syntax off\|else\|syntax enable\|endif<CR>

" 行ブックマーク Plug 'MattesGroeger/vim-bookmarks'
" default
" mm	:BookmarkToggle
" mi	:BookmarkAnnotate <TEXT>
" mn	:BookmarkNext
" mp	:BookmarkPrev
" ma	:BookmarkShowAll


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
  inoremap l<TAB> \Log::debug((print_r($aaa,true))); //TODO<C-c>
  inoremap lq<TAB> \Log::debug((print_r(\DB::last_query(),true))); //TODO<C-c>
;
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


"let g:php_localvarcheck_enable = 1
" let g:php_localvarcheck_global = 0

" let g:pdv_cfg_Type = "mixed"
" let g:pdv_cfg_Package = ""
" let g:pdv_cfg_Version = "$id$"
" let g:pdv_cfg_Author = "mofumofu3n <mofumofu3n@gmail.com>"
" let g:pdv_cfg_Copyright = "2013 mofumofu3n"
" let g:pdv_cfg_License = ""
" let g:pdv_cfg_ReturnVal = "void"



" vimRepeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


command! JsonFormat :execute '%!python -m json.tool'
  \ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)), sys.stdin.read()))"'
  \ | :%s/ \+$//ge
  \ | :set ft=javascript
  \ | :1

" 関数名表示

"
"---------------------------------------------------------------------------
" ステータスラインの表示
"---------------------------------------------------------------------------
  set statusline=%<     " 行が長すぎるときに切り詰める位置
  set statusline+=[%n]  " バッファ番号
  set statusline+=%m    " %m 修正フラグ
  set statusline+=%r    " %r 読み込み専用フラグ
  set statusline+=%h    " %h ヘルプバッファフラグ
  set statusline+=%w    " %w プレビューウィンドウフラグ
  set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
  set statusline+=%y    " バッファ内のファイルのタイプ

  set statusline+='[%{cfi#get_func_name()}()]'   " 関数名
  set statusline+=\     " 空白スペース
if winwidth(0) >= 130
  set statusline+=%F    " バッファ内のファイルのフルパス
else
  set statusline+=%t    " ファイル名のみ
endif
  " set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
  set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
" set statusline+=\ \   " 空白スペース2個
"  set statusline+=%1l   " 何行目にカーソルがあるか
"  set statusline+=/
"  set statusline+=%L    " バッファ内の総行数
"  set statusline+=,
"  set statusline+=%c    " 何列目にカーソルがあるか
"  set statusline+=%V    " 画面上の何列目にカーソルがあるか
" set statusline+=\ \   " 空白スペース2個
"   set statusline+=%P    " ファイル内の何％の位置にあるか


"""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
" let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
let g:hi_insert = 'highlight StatusLine guifg=white guibg=darkblue gui=none ctermfg=white ctermbg=blue cterm=none'
" highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

" set imdisable
set backspace=indent,eol,start

" ファイル保存時にPHPの構文チェック http://kannokanno.hatenablog.com/entry/20120716/1342428418
augroup PHP
  autocmd!
  autocmd FileType php set makeprg=php\ -l\ %
  " php -lの構文チェックでエラーがなければ「No syntax errors」の一行だけ出力される
  autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
augroup END


" 無視するディレクトリ/ファイル
let g:ctrlp_custom_ignore = '\v[\/](composer|build)$'


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


"  Jsonのダブルクォーテーション表示 'elzr/vim-json'
"  https://qiita.com/karur4n/items/a26007236c59c5fb8735#vim-json-%E5%85%A5%E3%82%8C%E3%82%88%E3%81%86
let g:vim_json_syntax_conceal = 0

" clever-f.vimのmigemo っぽい検索(日本語もfの検索にヒットさせる）https://rhysd.hatenablog.com/entry/2013/09/17/220837
let g:clever_f_use_migemo=1

"--------------------------------
"        nvim            
"--------------------------------
set nowrap 
set mouse=a 
"  クリップボード
set clipboard& 
set clipboard^=unnamedplus

"-------------------------------------------------------------------------------
" システム設定
"-------------------------------------------------------------------------------
set shortmess+=I     " 起動時のメッセージを表示しない
set noerrorbells     " エラー音抑止(gvimはgvimrcで指定)
set novisualbell     " ビジュアルベル抑止(gvimはgvimrcで指定)
set visualbell t_vb= " ビープ音抑止(gvimはgvimrcで指定)

set viminfo=

" インサートモードから抜けると自動的にIMEをオフにする
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
" set number            " 行番号を表示
" set relativenumber    " 相対行表示
set showmatch         " 対応する括弧を強調表示
set cursorline        " カーソル行の背景色を変える
"set cursorcolumn      " カーソル位置のカラムの背景色を変える
autocmd InsertEnter,InsertLeave * set cursorline! " 挿入モードの時のみ、カーソル行をハイライトする
set ruler             " 右下に行・列の番号を表示
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

" 画面最大
" au GUIEnter * simalt ~x


" メニュー非表示
" set guioptions-=m
" set guioptions-=T
" set guioptions-=r
" set guioptions-=R
" set guioptions-=l
" set guioptions-=L
" set guioptions-=b
"
 "set guifont=Ricty_Diminished:h13 " フォント
 set guifont=Ricty_Diminished:h14 " フォント
"set guifont=Ricty_Diminished_for_Powerline:h13
set list  " 不可視文字を表示する
" set listchars=tab:≫-,trail:-,extends:≫,precedes:≪,nbsp:%,eol:?

" 長いテキストで重くなる現象を回避
set synmaxcol=200

" ------------------------------------
" colorscheme
" ------------------------------------
colorscheme iceberg 
" colorscheme 256_noir
" colorscheme gotham
" colorscheme monokai 
" colorscheme nord
" colorscheme atom-dark-256 
" colorscheme Zenburn 
" colorscheme slate
" colorscheme twilight
" colorscheme gotham
"
"if (has("termguicolors"))
"  set termguicolors
"endif
"set background=dark
" colorscheme spacemacs-theme
" colorscheme monokai-phoenix
" colorscheme twilight
" colorscheme hydrangea

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
" augroup fileTypeIndent
"     autocmd!
"     autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
"     autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
"     autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
"     autocmd BufNewFile,BufRead *.tpl setlocal tabstop=2 softtabstop=2 shiftwidth=2
" augroup END

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




if filereadable(expand($HOME.'/.vimrc_local'))
  source $HOME/.vimrc_local
endif

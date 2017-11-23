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

" 編集
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-repeat'
" Plug 'terryma/vim-multiple-cursors'
"
"VCS 
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'vim-scripts/vcscommand.vim'
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

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'fuenor/qfixgrep' " QuickFixの拡張 TODO
Plug 'thinca/vim-qfreplace' " grep 結果を置換
Plug 'rking/ag.vim'
Plug 'fuenor/qfixgrep'
" Plug 'osyo-manga/vim-anzu'
"
" バッファ操作
Plug 'vim-scripts/BufOnly.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'vim-scripts/copypath.vim'
Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
" 移動
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/mru.vim'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'MattesGroeger/vim-bookmarks'
Plug 'troydm/easybuffer.vim'

" その他
Plug 'thinca/vim-quickrun'
Plug 'editorconfig/editorconfig-vim'
Plug 'tyru/restart.vim'
Plug 'Shougo/unite.vim'


"Plug 'aquach/vim-http-client'
"Plug 'diepm/vim-rest-console
"
"PHP
" Plug 'vim-scripts/PDV--phpDocumentor-for-Vim'
" language
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'
" TODO Js NOdeJs php 
" Plug 'vexxor/phpdoc.vim'
" Plug 'vim-scripts/php_localvarcheck.vim' 特定の関数でエラーを吐く
" Plug 'beanworks/vim-phpfmt'

call plug#end()
"-------- vim-plug END --------

"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------
" セミコロンでノーマルモードに移行
nnoremap ; :
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
nnoremap <silent> <Space>el  :<C-u>edit ~/Dropbox/vim/vimrc_local<CR>
" 設定再読み込み
nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>

" nnoremap <silent> <Space>e :e ./**/ 
nnoremap <silent> <Space>r :%s/b/a/gc
nnoremap <silent> <Space>gr :vimgrep /hoge/j **/*.txt | cw


" nnoremap <silent> <Space>p :CtrlPCurWD<CR>
nnoremap <silent> <Space>p  :cd C:\zendTest\trunk\04_Implementation<CR> :CtrlPCurWD<CR>
nnoremap <silent> <Space>cd  :cd C:\zendTest\trunk\04_Implementation<CR>

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

" 行ブックマーク Plug 'MattesGroeger/vim-bookmarks'
" nmap <D-F2> <Plug>BookmarkToggle
" nmap <C-F2> <Plug>BookmarkToggle
" nmap <silent> <Space>bl  <Plug>BookmarkShowAll
" nmap <F2> <Plug>BookmarkNext
" nmap <S-F2> <Plug>BookmarkPrev
" nmap <Space>bc <Plug>BookmarkClearAll


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
 inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/var/www/html/laravel/storage/logs/debug.log'); //TODO<C-c>
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


let g:php_localvarcheck_enable = 1
let g:php_localvarcheck_global = 0

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
  set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
  set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%1l   " 何行目にカーソルがあるか
  set statusline+=/
  set statusline+=%L    " バッファ内の総行数
  set statusline+=,
  set statusline+=%c    " 何列目にカーソルがあるか
  set statusline+=%V    " 画面上の何列目にカーソルがあるか
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%P    " ファイル内の何％の位置にあるか


"""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

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


"--------------------------------
"        COMMAND MEMO            
"--------------------------------
" ------- vim  -------
" ■Grep
" Ag xxx
"
"     option
"     -Q 正規表現を無視
"     -G 検索対象の指定 [ag -G *.css]
"
" ■ctags
" sudo yum install ctags
" ctags -R
" ■リロード
" :e!
"
" ------- NERDTree -------
" ツリー上でmを押してaで追加。名前の最後に/をつければディレクトリになる
"
" ------- grep -------
" git grep -HnI -10 xxxxxx
" git grep -HnI xxxxxx
"
" grep -rn xxxxxx *
"
"■Grepしたものを置換
"grep -rl \"beforeString" ./ | xargs perl -i -pe \"s/beforeString/afterString/g"
" git grep -l 'testaaa' | xargs sed -i -e 's/testaaa/testbbb/g'
"■GrepにヒットしたものをVimのタブで一気に開く
" vi -p `git grep -l \"keword"`   // rgrep, git grepで引っ掛けたファイルをvimのタブで一気に開く
"
" ------- find -------
" find ./ -name \"api.php"
"

" MySQL
" ps -ef | grep mysql
" service mysqld status
"  less /var/log/mysqld.log | grep Warning


" ------- Fuel -------
" php oil g controller posts action1 action2 action3
" php oil g model sample title:varchar[50] body:text user_id:int --no-migration


" ------- Laravel -------
" php artisan list       コマンド一覧
" php artisan route:list ルーティング一覧
" php artisan controller:make ControlerName コントローラ作成
"
" php artisan migrate
" php artisan make:migration whispers
" 
" php artisan make:model Profile 
" php artisan make:provider RepositoriesServiceProvider
"
" php artisan make:test UserTest テスト生成
" ./vendor/bin/phpunit
" ./vendor/bin/phpunit ExampleText.php
"
" composer dump-autoload
" 
"
" ------- Screen -------
" yum -y install screen
" screen 新しいセッションを作る。
" <ctrl> + <a>  S  水平方向に画面分割
"<ctrl> + <a>  <tab> 分割された方向に画面移動
"<ctrl> + <a> c      新しい端末を作る(分割された画面にできた、何もない空間に移動して実行
"
" ------- Git -------
" git diff  --staged          //git addした後に変更点を見る
" git diff brancA..brancB    // ブランチ同士を比較する
" git diff --stat            //どれくらい変更したかだけを見る
" git diff --name-only       // 変更点を表示するときに、変更があったファイルのパスだけを表示してくれます。
"                            //これ単体で使うというよりも、cpなどの外部コマンドとかと組み合わせて変更ファイルに対して一括処理をすることが多い。
" git diff --color-words     // 単語単位で比較する
"
" git branch -a              //ブランチ確認(リモート+ローカル
" git branch  branchName     //ブランチ作成
" git checkout branchName    //ブランチ切り替え
" git branch -b branchName   //ブランチ作成+切り替え
" git branch -d branchName   //ブランチ削除
"
" git add .    //新規作成、変更されたファイルをインデックスにaddする
" git add -u  //変更のあったファイルをaddする
" git commit -m \"メッセージ"
" git commit --amend　-m \"メッセージ"  //直前のコミットのメッセージ修正
" git push
" 
" git merge branchName              //コミットまでされる
" git merge --no-commit branchName  //コミットせずマージのみ
"
" git fetch  //リモートリポジトリから最新情報をローカルリポジトリに持ってくるだけ
" git merge  // ブランチを取り込む
" git pull   // fetch+merge
"
" git status
"
" git stash
" git stash apply
" git stash save \"<メッセージ>"
" git stash apply <stash@{1}>     //指定したstashを戻す
" git stash list                  //stashしたリストを表示
" git stash drop <stash@{1}>      // 削除
"
" git checkout <filename>     //作業ツリーの変更をリモートの状態に戻したい
" git reset --hard HEAD       //作業ツリーがわけわからなくなったらHEADの状態に戻したい！
"
" ------- Apache -------
" //Apache の conf ファイルの一覧をコマンドラインで取得
" httpd -t -D DUMP_CONFIG 2>/dev/null | grep '# In' | awk '{print $4}'
" //設定ファイルの内容の取得
" httpd -t -D DUMP_CONFIG 2>/dev/null | grep -v '#'
"
" systemctl restart httpd.service 再起動
" sudo vi /etc/httpd/conf/httpd.conf 
"
" ------- MySQL -------
" mysql -u root -p ログイン
"
"
" 初期導入時、MySQL 5.7ではログファイルにパスワードが吐かれている
" 以下のコマンドでパスワード確認
" cat /var/log/mysqld.log | grep 'password is generated'
"
"
" ------- Study -------
"    vimを瞬時に最強エディタに変えるbコマンド
"    http://qiita.com/qtamaki/items/4da4ead3f2f9a525591a
"    下記のコマンドでバッファに飛べる
"    :b 番号 

"    :marks	mark一覧を表示する
"    m[a-zA-Z]	カーソル位置をmarkする
"    `[a-zA-Z]	指定のマークに移動
"    :delmarks!	マークの一括削除
" TODO セッション
"

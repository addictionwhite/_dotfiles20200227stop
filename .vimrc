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

"-------- vim-plug START --------
call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php {{{2
Plug 'Shougo/neocomplete.vim'
Plug 'h1mesuke/unite-outline'
Plug 'gosukiwi/vim-atom-dark'
Plug 'simeji/winresizer'
Plug 'thinca/vim-quickrun'
" レジスタ履歴を利用したヤンク
"参考 http://leafcage.hateblo.jp/entry/2013/10/31/yankroundvim
Plug 'LeafCage/yankround.vim'
Plug 'thinca/vim-qfreplace'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'rking/ag.vim'
Plug 'mhinz/vim-signify'
Plug 'cohama/agit.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'open-browser.vim'
Plug 'mbbill/undotree'
Plug 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
Plug 'Shougo/vimshell.vim'
Plug 'scrooloose/nerdtree'
Plug 'soramugi/auto-ctags.vim'
Plug 'hail2u/vim-css3-syntax'
" カーソル配下の単語をハイライト
Plug 'osyo-manga/vim-brightest'
Plug 'Lokaltog/vim-easymotion'
" スニペット
" 参考http://qiita.com/koyopro/items/c473b3c2323501b7891a
Plug 'Shougo/neocomplcache'
" Plug 'Shougo/neosnippet'
Plug 'violetyk/neocomplete-php.vim'
Plug 'mhinz/vim-startify'
Plug 'glidenote/memolist.vim'
Plug 'Shougo/vimfiler' | Plug 'Shougo/unite.vim'
Plug 'tyru/caw.vim'
Plug 'open-browser.vim'
Plug 'vim-scripts/mru.vim'
Plug 'sudo.vim'
" Markdownのプレビュー http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
Plug 'plasticboy/vim-markdown' | Plug 'kannokanno/previm' | Plug 'tyru/open-browser.vim'
Plug 'maciakl/vim-neatstatus'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

" TODO 未設定
Plug 'scrooloose/syntastic'
" TODO 使い方
Plug 'deris/vim-rengbang'
Plug 'junegunn/vim-github-dashboard'

"Plug 'L9'
"Plug 'vim-scripts/FuzzyFinder'
" 別プラグインとぶつかってエラーになる https://github.com/vim-jp/issues/issues/584
" Plug 'taichouchou2/html5.vim'
" Plug 'taichouchou2/vim-javascript'
" Plug 'akira-hamada/friendly-grep.vim'
" Plug 'valloric/matchtagalways'
" Plug 'vim-scripts/dbext.vim'
" Plug 'AlessandroYorba/Alduin'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'tyru/restart.vim'
" Plug 'gregsexton/MatchTag'
" Plug 'gregsexton/tgitv'
" Plug 'airblade/vim-gitgutter'
" Plug 'skammer/vim-css-color'
" Plug 'osyo-manga/vim-over'
" Plug 'vim-airline/vim-airline'
" Plug 'edkolev/tmuxline.vim'
" Plug 'jreybert/vimagit'
" Plug 'kmnk/vim-unite-giti'
" Plug 'majutsushi/tagbar'
" Plug 'lambdalisue/vim-gista'

call plug#end()
"-------- vim-plug END --------

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
" MorkDown Prevew
nmap <silent> <Space>mk  :PrevimOpen
" VimFiler
nmap <D-I> :VimFilerBufferDir<CR>
inoremap <D-I> <ESC>:VimFilerBufferDir<CR>
"履歴一覧(kien/ctrlp.vim)
nnoremap <silent>pl :<C-u>CtrlPYankRound<CR>
" Web検索
nnoremap <silent> <Space>go :OpenBrowserSearch

"/yankround.vim'用キーマップ
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
" nmap <C-i> <Plug>(yankround-prev)
" nmap <C-n> <Plug>(yankround-next)
nmap pp <Plug>(yankround-prev)
nmap pb <Plug>(yankround-next)

" メモプラグイン
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>

" 辞書
nmap <silent> <Space>dt  :DictionaryTranslate

"---------------Git START---------------
nnoremap <silent> <Space>gl :GitiLog<CR>
nnoremap <silent> <Space>gp :Gpull<CR>
nnoremap <silent> <Space>gd :Gdiff<CR>
nnoremap <silent> <Space>gb :Gblame<CR>
nnoremap <silent> <Space>gs :Gstatus<CR>
nnoremap <silent> <Space>gr :Gread<CR>
nnoremap <silent> <Space>push :GitiPush

" 履歴閲覧プラグイン(Exから叩いて良い気がする）
nnoremap <silent> <Space>a : :Agit<CR>
" 次の差分箇所に移動
nmap <C-j> <Plug>(signify-next-hunk)zz
" 前の差分箇所に移動
nmap <C-k> <Plug>(signify-prev-hunk)zz
"---------------Git END---------------

" 行ブックマーク Plug 'MattesGroeger/vim-bookmarks'
nmap <D-F2> <Plug>BookmarkToggle
nmap <silent> <Space>bl  <Plug>BookmarkShowAll
nmap <F2> <Plug>BookmarkNext
" nmap <S-F2> <Plug>BookmarkPrev
nmap <Space>bc <Plug>BookmarkClearAll

" NERDTree
nnoremap <A-F1> :NERDTreeFind<CR>
nnoremap <D-1> :NERDTreeClose<CR>

" バッファ移動
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
" バッファ削除
nnoremap <C-w>b  :bd<CR>
nnoremap <silent> <Space>o  :only<CR>

" 行削除(Dでは無理っぽい）
nnoremap <D-K> dd
inoremap <D-K> <ESC>ddi

" コメントアウト
nmap <D-/> <Plug>(caw:i:toggle)
vmap <D-/> <Plug>(caw:i:toggle)

nnoremap <silent> <Space>pi  :PlugInstall<CR>
nnoremap <silent> <Space>pu  :PlugUpdate<CR>

" .設定ファイルを開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
nnoremap <silent> <Space>el  :<C-u>edit ~/Dropbox/vim/vimrc_local<CR>

" 設定再読み込み
nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>

"
" TODO com+Nのキーマップ
" TODO fNのキーマップ

" vimコマンド出力をクリップボードへコピー(コピーしたいコマンドを引数に与える) http://d.hatena.ne.jp/hide04/20111223/1324621495
nnoremap <F1> :CopyCmdOutput
" nmap <F2> <Plug>BookmarkNext 設定済み
" 最近開いたファイルを開く
nnoremap <F3> :MRU<CR>

" TODO GHDashboard
" TODO Gist系
" :Gist -l
" :Gist -p " 開いたバッファをPOSTする
" :Gist -d " バッファを開いてコマンドを叩く

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
" スニペットプラグイン設定
"  " let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'
" let g:neosnippet#snippets_directory=$HOME.'/snippets'
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

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

"vimfiler セーフモード OFF (削除やリネームの制限解除)
let g:vimfiler_safe_mode_by_default = 0

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
let g:startify_bookmarks = ["~/.vimrc", "~/.gvimrc" , "/private/etc/hosts" , "/Applications/MAMP/conf/apache/httpd.conf" , "/Applications/MAMP/conf/apache/extra/httpd-vhosts.conf" ]

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

" Vimで和英、英和翻訳 http://qiita.com/ass_out/items/e26760a9ee1b427dfd9d
function! s:DictionaryTranslate(...)
    let l:word = a:0 == 0 ? expand('<cword>') : a:1
    call histadd('cmd', 'DictionaryTranslate '  . l:word)
    if l:word ==# '' | return | endif
    let l:gene_path = '~/.vim/dict/gene.txt'
    let l:jpn_to_eng = l:word !~? '^[a-z_]\+$'
    let l:output_option = l:jpn_to_eng ? '-B 1' : '-A 1' " 和英 or 英和

    silent pedit Translate\ Result | wincmd P | %delete " 前の結果が残っていることがあるため
    setlocal buftype=nofile noswapfile modifiable
    silent execute 'read !grep -ihw' l:output_option l:word l:gene_path
    silent 0delete
    let l:esc = @z
    let @z = ''
    while search("^" . l:word . "$", "Wc") > 0 " 完全一致したものを上部に移動
        silent execute line('.') - l:jpn_to_eng . "delete Z 2"
    endwhile
    silent 0put z
    let @z = l:esc
    silent call append(line('.'), '==')
    silent 1delete
    silent wincmd p
endfunction
command! -nargs=? -complete=command DictionaryTranslate call <SID>DictionaryTranslate(<f-args>)

" vimコマンド出力をクリップボードへコピー(コピーしたいコマンドを引数に与える) http://d.hatena.ne.jp/hide04/20111223/1324621495
func! s:func_copy_cmd_output(cmd)
    redir @*>
    silent execute a:cmd
    redir END
endfunc

command! -nargs=1 -complete=command CopyCmdOutput call <SID>func_copy_cmd_output(<q-args>)

"Markdownのプレビュー http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Firefox'
"---------------------------------------------------------------------------
" 簡易スニペットneocomplcache*キー+Tabでシンプルに出力させるため (Memo:Ctrl+V, Ctrl+Mで改行コード を出力できる
"---------------------------------------------------------------------------
" TODO 拡張子ごとに変えられないか 参考http://d.hatena.ne.jp/osyo-manga/20111025/1319546057
inoremap v<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/tmp/mylog/debug.log'); //TODO2<C-c>
inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/Applications/MAMP/logs/debug.log'); //TODO'); //TODO2<C-c>
inoremap fe<TAB> foreach ($arr as $value)
\{ }<C-c>
inoremap fu<TAB> function test() { }<C-c>

" TODO Class if for ifel  array | js click css

" http://auewe.hatenablog.com/entry/2013/05/14/003610
if filereadable(expand($HOME.'/Dropbox//vim/vimrc_local'))
  source $HOME/Dropbox//vim/vimrc_local
endif


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
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/pyte'

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
Plug 'jreybert/vimagit'
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'open-browser.vim'
Plug 'mbbill/undotree'
" Plug 'Shougo/vimproc.vim', {
" \ 'build' : {
" \     'windows' : 'tools\\update-dll-mingw',
" \     'cygwin' : 'make -f make_cygwin.mak',
" \     'mac' : 'make -f make_mac.mak',
" \     'linux' : 'make',
" \     'unix' : 'gmake',
" \    },
" \ }
Plug 'Shougo/vimshell.vim'
Plug 'scrooloose/nerdtree'
Plug 'soramugi/auto-ctags.vim'
" カーソル配下の単語をハイライト
Plug 'osyo-manga/vim-brightest'
Plug 'Lokaltog/vim-easymotion'
" スニペット
" 参考http://qiita.com/koyopro/items/c473b3c2323501b7891a
Plug 'Shougo/neocomplcache'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'violetyk/neocomplete-php.vim'
Plug 'mhinz/vim-startify'
Plug 'glidenote/memolist.vim'
Plug 'Shougo/vimfiler' | Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'tyru/caw.vim'
Plug 'open-browser.vim'
Plug 'vim-scripts/mru.vim'
Plug 'sudo.vim'
" Markdownのプレビュー http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
Plug 'plasticboy/vim-markdown' | Plug 'kannokanno/previm' | Plug 'tyru/open-browser.vim'
"  Plug 'maciakl/vim-neatstatus'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

Plug 'shikato/keysender.vim'
Plug 'shikato/vim2browser.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/copypath.vim'
Plug 'ternjs/tern_for_vim'
Plug 'vim-scripts/Align'
Plug 'kien/rainbow_parentheses.vim'
Plug 'sjl/gundo.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'airblade/vim-rooter'

" TODO 未設定
Plug 'scrooloose/syntastic'
" TODO 使い方
Plug 'deris/vim-rengbang'
Plug 'junegunn/vim-github-dashboard'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
" Plug 'L9'
" Plug 'vim-scripts/FuzzyFinder'
" 別プラグインとぶつかってエラーになる https://github.com/vim-jp/issues/issues/584
" Plug 'taichouchou2/html5.vim'
" Plug 'taichouchou2/vim-javascript'
" Plug 'akira-hamada/friendly-grep.vim'
" Plug 'valloric/matchtagalways'
" Plug 'vim-scripts/dbext.vim'
" Plug 'AlessandroYorba/Alduin'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'gregsexton/MatchTag'
" Plug 'gregsexton/tgitv'
" Plug 'airblade/vim-gitgutter'
" Plug 'skammer/vim-css-color'
" Plug 'osyo-manga/vim-over'
" Plug 'vim-airline/vim-airline'
" Plug 'edkolev/tmuxline.vim'
" Plug 'kmnk/vim-unite-giti'
" Plug 'majutsushi/tagbar'
" Plug 'lambdalisue/vim-gista'
" Plug 'szw/vim-tags'
" Plug 'aquach/vim-http-client'
" Plug 'tyru/restart.vim'
" Plug 'tyru/eskk.vim'
" Plug 'flazz/vim-colorschemes'
" Plug 'ryanoasis/vim-devicons'

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

" バッファ(タブ)移動
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
" バッファ削除
nnoremap <C-w>b  :bd<CR>
" バッファを閉じる
nnoremap <silent> <Space>bc  :bd<CR>
" すべてのバッファを閉じる（Vimは閉じない）
nnoremap <silent> <Space>ba  :%b<CR>
" 自分以外のバッファを閉じる
nnoremap <silent> <Space>bo  :BufOnly<CR>
" 自分以外のウィンドウを閉じる
nnoremap <silent> <Space>on  :only<CR>
" finderで開く
nnoremap <silent> <Space>of  :! open .<CR><CR>

" 行削除(Dでは無理っぽい）
nnoremap <D-K> dd
inoremap <D-K> <ESC>ddi
vnoremap <D-K> dd

" コメントアウト
nmap <D-/> <Plug>(caw:i:toggle)
vmap <D-/> <Plug>(caw:i:toggle)

" プラグイン更新
nnoremap <silent> <Space>pi  :PlugInstall<CR>
nnoremap <silent> <Space>pu  :PlugUpdate<CR>
" .設定ファイルを開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
nnoremap <silent> <Space>el  :<C-u>edit ~/Dropbox/vim/vimrc_local<CR>

nnoremap <silent> <Space>cl  :<C-u>view ~/Dropbox/vim/command_list<CR>
nnoremap <silent> <Space>sl  :<C-u>view ~/Dropbox/vim/setting_list<CR>

" 設定再読み込み
nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>

" 余っているキーマップ
" TODO com+Nのキーマップ
" TODO fNのキーマップ

" vimコマンド出力をクリップボードへコピー(コピーしたいコマンドを引数に与える) http://d.hatena.ne.jp/hide04/20111223/1324621495
" nnoremap <F1> :CopyCmdOutput
nnoremap <F1> :Startify<CR>
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

" very magigを使うとvim-anzuが効かなくなる？
" nnoremap /  /\v

" ファイルパス、ファイル名称取得
nnoremap <silent> <Space>cp  :CopyPath<CR>
nnoremap <silent> <Space>pf  :CopyFileName<CR>

" ctags設定
nnoremap <D-M> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
nnoremap <silent> <Space>tg :TagsGenerate<CR>

" 保存した際にctags生成 (soramugi/auto-ctags.vim)
let g:auto_ctags = 1

" ビジュアルモードで囲った箇所をイコール揃え(Alignプラグイン）
vnoremap <silent> <Space>=   :Align<CR>

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

" START_vim-startify  起動時の履歴設定 http://mjhd.hatenablog.com/entry/recommendation-of-vim-startify
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

" END_vim-startify

" メモプラグイン memolist.vim settings
let g:memolist_path = "~/Dropbox/vim/memolist"
let g:memolist_template_dir_path = "~/.vim/template/memolist"

"Markdownのプレビュー http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Firefox'

" isdirectory
if isdirectory(expand($HOME.'/Dropbox//vim/snippets'))
    let g:neosnippet#snippets_directory=$HOME.'/Dropbox/vim/snippets'

    " スニペットプラグイン設定
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)
endif
"---------------------------------------------------------------------------
" 簡易スニペットneocomplcache*キー+Tabでシンプルに出力させるため (Memo:Ctrl+V, Ctrl+Mで改行コード を出力できる
"---------------------------------------------------------------------------
" TODO 拡張子ごとに変えられないか 参考http://d.hatena.ne.jp/osyo-manga/20111025/1319546057
" inoremap v<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/tmp/mylog/debug.log'); //TODO2<C-c>
" inoremap l<TAB> error_log(__CLASS__ . __LINE__ . '行:' . print_r($aaa, true) . "\n", 3, '/Applications/MAMP/logs/debug.log'); //TODO'); //TODO2<C-c>
" inoremap fe<TAB> foreach ($arr as $value)
" \{ }<C-c>
" inoremap fu<TAB> function test() { }<C-c>

"---------------------------------------------------------------------------
" ステータスライン
"---------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
else
    return ""
  endif
endfunction

function! LightLineFugitive()
vim-css3-syntax  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ステータスラインを常に表示（編集中のファイル名が常に確認できるようになる）
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" http://auewe.hatenablog.com/entry/2013/05/14/003610
if filereadable(expand($HOME.'/Dropbox//vim/vimrc_local'))
  source $HOME/Dropbox//vim/vimrc_local
endif

" vimAnzu
" nmap n <Plug>(anzu-n-with-echo)
" nmap N <Plug>(anzu-N-with-echo)
nmap n <Plug>(anzu-mode-n)
nmap N <Plug>(anzu-mode-N)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
" nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}mode-N)

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

" -----------END---------
echo 'load .vimrc'

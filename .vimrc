" OSXデフォルトのvimでのエラー防止
" http://nanasi.jp/articles/howto/install/vim7_install_to_tiger.html"
:if ! has("migemo")
    :finish
:endif

" :vimgrepに加えて:grep、:Ggrepでも自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow

"-------- vim-plug START --------
call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" 補完 START 参考 http://kaworu.jpn.org/vim/vim%E3%81%AEPHP%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83#neocomplete-php 
Plug 'Shougo/neocomplete.vim'
Plug 'h1mesuke/unite-outline'
Plug 'gosukiwi/vim-atom-dark'
Plug 'andreasvc/vim-256noir'
Plug 'sickill/vim-monokai'
Plug 'jnurmine/Zenburn'
Plug 'maciakl/vim-neatstatus'
" TODO
" Plug 'vim-scripts/TaskList.vim'
" Plug 'rhysd/clever-f.vim'
Plug 'dkprice/vim-easygrep'
" Plug 'kien/ctrlp.vim'

Plug 'keith/swift.vim'
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
Plug 'Shougo/vimfiler' 
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-scripts/spinner.vim'
1lug 'troydm/easybuffer.vim'
Plug 'tyru/caw.vim'
Plug 'vim-scripts/mru.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'Valloric/MatchTagAlways'

" Plug 'sudo.vim'
" Markdownのプレビュー http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
Plug 'plasticboy/vim-markdown' | Plug 'kannokanno/previm' | Plug 'tyru/open-browser.vim'
"  Plug 'maciakl/vim-neatstatus'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

Plug 'shikato/keysender.vim'
Plug 'shikato/vim2browser.vim'
Plug 'whatyouhide/vim-gotham'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/copypath.vim'
Plug 'ternjs/tern_for_vim'
" Plug 'vim-scripts/Align'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'sjl/gundo.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'airblade/vim-rooter'

" 単語検索
" Plug 'ynoca/vim-dejizo-translator.vim'
" 文法チェック
" Plug 'rhysd/vim-grammarous'
" 単語補完
Plug 'ujihisa/neco-look'
Plug 'koron/codic-vim'
Plug 'ap/vim-buftabline'

" TODO 未設定
Plug 'scrooloose/syntastic'
" TODO 使い方
Plug 'deris/vim-rengbang'
Plug 'junegunn/vim-github-dashboard'
Plug 'omnisharp/omnisharp-vim'

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
inoremap <silent> kk <ESC>
" 挿入モードでのカーソル移動
inoremap <D-j> <Down>
inoremap <D-k> <Up>
inoremap <D-h> <Left>
inoremap <D-l> <Right>

" easyMotion
nmap s <Plug>(easymotion-s2)
" nmap w <Plug>(easymotion-w)
" nmap e <Plug>(easymotion-e)
" JK motions: Line motions
" map j <Plug>(easymotion-j)
" map k <Plug>(easymotion-k)
" Move to line
let g:EasyMotion_startofline=0
" map <silent>jk <Plug>(easymotion-bd-jk)
" nmap <silent>jK <Plug>(easymotion-overwin-line)
" Move to line
map <silent>;; <Plug>(easymotion-bd-jk)
nmap <silent>;; <Plug>(easymotion-overwin-line)

" 行ブックマーク Plug 'MattesGroeger/vim-bookmarks'
nmap <D-F2> <Plug>BookmarkToggle
nmap <silent> <Space>bl  <Plug>BookmarkShowAll
nmap <F2> <Plug>BookmarkNext
nmap <S-F2> <Plug>BookmarkPrev
nmap <Space>bc <Plug>BookmarkClearAll

" タブ切り替え
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprev<CR>
" タブ作成削除 
nmap <C-w>n :enew<CR>
" nmap <C-w>c :bd<CR>
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

" 最近開いたファイル一覧
nmap <silent> <Space>mr  :MRU<CR>
" VimFiler
nmap <D-I> :VimFilerBufferDir<CR>
inoremap <D-I> <ESC>:VimFilerBufferDir<CR>
" NERDTree
nnoremap <A-F1> :NERDTreeFind<CR>
nnoremap <D-1> :NERDTreeClose<CR>
nnoremap <Space>ne :NERDTree<CR>
nnoremap <Space>nf :NERDTreeFind<CR>
nnoremap <Space>nc :NERDTreeClose<CR>

" ファイルパス、ファイル名称取得
nnoremap <silent> <Space>cp  :CopyPath<CR>
nnoremap <silent> <Space>cf  :CopyFileName<CR>
nnoremap <silent> <Space>cc  :CdCurrent<CR>
" finderで開く
nnoremap <silent> <Space>op  :! open .<CR><CR>
" 開いているファイルのリネーム(" :Rename! で強制変更) http://d.hatena.ne.jp/fuenor/20100115/1263551230
command! -nargs=+ -bang -complete=file Rename let pbnr=fnamemodify(bufname('%'), ':p')|exec 'f '.escape(<q-args>, ' ')|w<bang>|call delete(pbnr)
nnoremap <silent> <Space>rn  :Rename 

" メモプラグイン
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>

" Emmet
nmap <silent> <Space>em  :Emmet
" MorkDown Prevew
nmap <silent> <Space>mk  :PrevimOpen
" json整形
nnoremap <silent> <Space>jq  ::%!jq '.'<CR>

"履歴一覧(kien/ctrlp.vim)
" nnoremap <silent>pl :<C-u>CtrlPYankRound<CR>
" Web検索
" nnoremap <silent> <Space>go :OpenBrowserSearch

"/yankround.vim'用キーマップ
" nmap p <Plug>(yankround-p)
" nmap P <Plug>(yankround-P)
" nmap gp <Plug>(yankround-gp)
" nmap gP <Plug>(yankround-gP)
" " nmap <C-i> <Plug>(yankround-prev)
" " nmap <C-n> <Plug>(yankround-next)
" nmap pp <Plug>(yankround-prev)
" nmap pb <Plug>(yankround-next)

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
" 設定再読み込み
nnoremap <silent> <Space>sv  :source ~/.vimrc<CR>
nnoremap <silent> <Space>sg  :source ~/.gvimrc<CR>

nnoremap <silent> <Space>cl  :<C-u>view ~/Dropbox/vim/command_list<CR>
nnoremap <silent> <Space>sl  :<C-u>view ~/Dropbox/vim/setting_list<CR>

" nnoremap <D-2> :GundoToggle<CR>
" nnoremap <D-3> :<C-u>setlocal relativenumber!<CR>
noremap  <D-2>  :call BufferList()<CR>
noremap  <D-3>  <Plug>BookmarkShowAll

" 開いているswiftファイルを
" nnoremap <silent> <Space>sw  :! swift  %<CR>

nnoremap <F1> :Startify<CR>
" nmap <F2> <Plug>BookmarkNext 設定済み
" 最近開いたファイルを開く
" nnoremap <F3> :MRU<CR>

" TODO GHDashboard
" TODO Gist系
" :Gist -l
" :Gist -p " 開いたバッファをPOSTする
" :Gist -d " バッファを開いてコマンドを叩く

 "---------------検索,置換---------------
 " easyGrep 
 nnoremap <D-r> :Replace 
 nnoremap <D-F> :Grep 
 " Ag(Grep)
 " nnoremap <silent> <Space>g   :Ag
 " nmap <C-n>  :cn<CR><D-/>
 " nmap <C-n>  :cn<CR>
 " nmap <C-p>  :cp<CR>
 " カーソル配下の単語でAg
" nnoremap <expr> g* ':Ag ' . expand('<cword>')
" vnoremap <expr> g* ':Ag ' . expand('<cword>')
" " カーソル配下の単語で置換(memo:gcで確認しながら繰り返し置換
" nnoremap <expr> r* ':%s ;\<' . expand('<cword>') . '\>;'
" nnvnoremap <expr> r* ':s ;\<' . expand('<cword>') . '\>;'
" " カーソル配下の単語検索
" nnoremap <expr> f* '/' . expand('<cword>')
" vnoremap <expr> f* '/' . expand('<cword>')


" 英単語サーチ
" nnoremap <silent> <Space>j  :DejizoTranslateWord<CR>

" very magigを使うとvim-anzuが効かなくなる？
" nnoremap /  /\v

" ctags設定
nnoremap <D-M> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
nnoremap <silent> <Space>tg :TagsGenerate<CR>


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
if isdirectory(expand($HOME.'/Dropbox/vim/snippets'))
    let g:neosnippet#snippets_directory=$HOME.'/Dropbox/vim/snippets'
    " スニペットプラグイン設定
    imap <D-i>     <Plug>(neosnippet_expand_or_jump)
    smap <D-i>     <Plug>(neosnippet_expand_or_jump)
    xmap <D-i>     <Plug>(neosnippet_expand_target)
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

if !exists('g:neocomplete#text_mode_filetypes')
    let g:neocomplete#text_mode_filetypes = {}
endif
let g:neocomplete#text_mode_filetypes = {
            \ 'rst': 1,
            \ 'markdown': 1,
            \ 'gitrebase': 1,
            \ 'gitcommit': 1,
            \ 'vcs-commit': 1,
            \ 'hybrid': 1,
            \ 'text': 1,
            \ 'help': 1,
            \ 'tex': 1,
            \ }

" http://auewe.hatenablog.com/entry/2013/05/14/003610
if filereadable(expand($HOME.'/Dropbox//vim/vimrc_local'))
  source $HOME/Dropbox//vim/vimrc_local
endif


" neocomplcache START http://vim-jp.org/vim-users-jp/2010/10/17/Hack-177.html
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1
    " Use smartcase.
    let g:neocomplcache_enable_smart_case = 1
    " Use camel case completion.
    let g:neocomplcache_enable_camel_case_completion = 1
    " Use underbar completion.
    let g:neocomplcache_enable_underbar_completion = 1
    " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

    " Define dictionary.
    " let g:neocomplcache_dictionary_filetype_lists = {
    "     \ 'default' : '',
    "     \ 'vimshell' : $HOME.'/.vimshell_hist',
    "     \ 'scheme' : $HOME.'/.gosh_completions'
    "         \ }

    " Define keyword.
    " if !exists('g:neocomplcache_keyword_patterns')
    "     let g:neocomplcache_keyword_patterns = {}
    " endif
    let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" neocomplete END 


" 自動改行オフ http://kaworu.jpn.org/kaworu/2007-07-29-1.php
set tw=0

" 保存した際にctags生成 (soramugi/auto-ctags.vim)
let g:auto_ctags = 1

" -----------END---------
echo 'load .vimrc'


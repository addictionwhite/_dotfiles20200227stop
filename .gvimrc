" vim: foldmethod=marker
" vim: foldcolumn=3
" vim: foldlevel=0
"-------------------------------------------------------------------------------
" システム設定
"-------------------------------------------------------------------------------
set shortmess+=I     " 起動時のメッセージを表示しない
set noerrorbells     " エラー音抑止(gvimはgvimrcで指定)
set novisualbell     " ビジュアルベル抑止(gvimはgvimrcで指定)
set visualbell t_vb= " ビープ音抑止(gvimはgvimrcで指定)

" インサートモードから抜けると自動的にIMEをオフにする
set iminsert=2
"-------------------------------------------------------------------------------
" エンコーディング設定
"---------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8  " 基本文字コード
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
" set fileencodings=utf-8,cp932 " 文字コード自動判別(優先順)

"-------------------------------------------------------------------------------
" 表示設定
"---------------------------------------------------------------------------
"" 半透明
" set transparenclisty=5
" 縦幅 デフォルト24
set lines=9999
" 横幅 デフォルト80
set columns=9999

" set guifont=Ricty_Diminished:h13 " フォント
set guifont=Hack:h12 " フォント
set number            " 行番号を表示
set relativenumber    " 相対行表示
set showmatch         " 対応する括弧を強調表示
syntax on             " シンタックスハイライト
set cursorline        " カーソル行の背景色を変える
"set cursorcolumn      " カーソル位置のカラムの背景色を変える
autocmd InsertEnter,InsertLeave * set cursorline! " 挿入モードの時のみ、カーソル行をハイライトする
set ruler             " 右下に行・列の番号を表示
set title             " タイトル表示

" 左右のスクロールバーを非表示にする
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
" 水平スクロールバーを非表示にする
set guioptions-=b

set list  " 不可視文字を表示する
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

" 長いテキストで重くなる現象を回避
set synmaxcol=200

" ------------------------------------
" colorscheme
" ------------------------------------
" colorscheme 256_noir
" colorscheme gotham
 colorscheme monokai 

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

set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 各ファイルによってインデントの深さを変える http://qiita.com/mitsuru793/items/2d464f30bd091f5d0fef
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.tpl setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"-------------------------------------------------------------------------------
" 検索/置換設定
"-------------------------------------------------------------------------------
set ignorecase   " 大/小文字無視
set smartcase    " ただし大文字を含む検索の場合は大/小文字有効
set incsearch    " インクリメンタルサーチ有効
set hlsearch     " 検索結果ハイライト表示
set wrapscan     " 検索をファイルの先頭へループする
set gdefault     " 置換の時 g オプションをデフォルトで有効

"-------------------------------------------------------------------------------
" コマンドライン
"---------------------------------------------------------------------------
" TABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
"履歴を10000件保存する
set history=10000

"esc連打でハイライトをオフ
nnoremap <silent> <ESC><ESC> :noh<CR>


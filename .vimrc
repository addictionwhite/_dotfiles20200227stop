set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif 

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Yggdroot/indentLine'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'mattn/webapi-vim'
NeoBundle 'open-browser.vim'

NeoBundle 'balloon-stat/dirs.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'


nmap s <Plug>(easymotion-s2)

let g:user_emmet_leader_key='<C-e>'


" twitter
let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1 
let twitvim_count = 40





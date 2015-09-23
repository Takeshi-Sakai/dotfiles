"---------------------------------------------------------------------------
" コマンドメモ:
"
"h 左へ移動
"j 下へ移動
"k 上へ移動
"l 右へ移動
"w 次の単語の頭へ移動
"e 次の単語の末尾へ移動
"b 前の単語の頭へ移動
"0 行頭へ移動
"^ 文頭へ移動
"$ 行末へ移動
"H 画面内の一番上の行へ移動
"M 画面内の真ん中の行へ移動
"L 画面内の一番下の行へ移動
"C-f PageDown
"C-b PageUp
"C-u 画面半分上へ
"C-d 画面半分下へ
"gg ファイルの先頭へ移動
"G ファイルの末尾へ移動
"[数字]j [数字]行下へ移動
"[数字]k [数字]行上へ移動
"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
" 検索に関する設定:
"
" 検索時に大文字小文字を無視
set ignorecase
" インクリメンタルサーチ
set incsearch
" 検索ハイライト
set hlsearch
" 検索時にファイルの最後まで行ったら最初に戻る
set wrapscan

"---------------------------------------------------------------------------
" 画面の設定:
"
" 行番号の表示
set number 
" タイトルの表示
"set title
" ルーラーを表示
set ruler
" 空白文字を可視化する
set list
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" モードを表示する
set showmode

"---------------------------------------------------------------------------
"" 編集に関する設定:
"
" タブの幅
set tabstop=8
" タブを入力した時に連続する空白の数
set softtabstop=4
" タブをスペースに展開する
set expandtab
" 自動インデントの際の各ステップの幅
set shiftwidth=4
" 自動的にインデントする
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 括弧を閉じる時に対応する括弧を強調示する
set showmatch
" 補完機能を強化する
set wildmenu
" 補完機能を共通する最長部分まで保管して、次にlistを表示させる
set wildmode=longest,list

"---------------------------------------------------------------------------
"" 基本設定:
"
" ビープ音を鳴らさない
set vb t_vb=
"let g:hybrid_use_iTerm_colors = 1
colorscheme brogrammer
syntax on
set t_Co=256

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'

call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

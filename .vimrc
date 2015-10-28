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
"0 行頭へ移動 → 1へ変更
"^ 文頭へ移動
"$ 行末へ移動 → 0へ変更
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
"gt タブを右に移動
"gT タブを左に移動
"---------------------------------------------------------------------------

" NeoBundle設定
source ~/dotfiles/.vimrc_neobundle
" color設定
source ~/dotfiles/.vimrc_colors

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
" Vim エディタ終了時に"Thanks for Flying Vim"の表示を出さなくする
"set notitle
" ルーラーを表示
set ruler
" 空白文字を可視化する
set list
" 常にステータス行を表示 (詳細は:help laststatus)
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
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 括弧を閉じる時に対応する括弧を強調して表示する
set showmatch
" 補完機能を強化する
set wildmenu
" 補完機能を共通する最長部分まで保管して、次にlistを表示させる
set wildmode=longest,list
" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"---------------------------------------------------------------------------
"" 基本設定:
" 
"set term=screen-256color
"set nocompatible
" ビープ音を鳴らさない
set vb t_vb=

" helpドキュメントの検索順を en → ja にする
set helplang=en,ja

" OSのクリップボードを使用する(vim の version が 7.4以上の必要がある)
set clipboard+=unnamed
" ビジュアルモードで選択したテキストを自動でクリップボードにコピーする
"set clipboard+=autoselect

" ターミナルでマウスを使用できるようにする
" ノーマル、ビジュアル、挿入、コマンドラインモードの全てで有効にする
set mouse=a
" 範囲選択、ウィンドウサイズの変更、タブの移動などのマウスの拡張機能が使用できる
set ttymouse=xterm2

"---------------------------------------------------------------------------
"" keymap 設定:

" normal prefix
noremap <Space>t :<C-u>tabnew

" noremal + visual mode
" 1 で行頭、0 で行末へ
noremap 1 0
noremap 0 $

" insert mode
" insert モード時に方向キーを有効にする
imap <Esc>OA <Up>
imap <Esc>OB <Down>
imap <Esc>OC <Right>
imap <Esc>OD <Left>



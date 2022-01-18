syntax enable
set backspace=indent,eol,start
" 入力モードでTabキー押下時に半角スペースを挿入
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
" 改行時に入力された行の末尾に合わせて次の行をインデントする
set smartindent
" 前回の検索パターンが存在する時、それにマッチするテキストを全て強調表示
set hlsearch
" ステータス行を表示
set laststatus=2
" オートインデント
set autoindent
" 検索パターンにおいて大文字と小文字を区別しない
set ignorecase
" 検索コマンドを打ち込んでいる間にも、打ち込んだところまでのパターンがマッチするテキストをすぐに表示する
set incsearch
" 色設定
colorscheme default
" コメントの色
hi Comment ctermfg=3
" タイトルを表示
set title
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
" 省略されずに表示
set display=lastline
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
" auto reload .vimrc
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" 文字コード
set encoding=utf-8

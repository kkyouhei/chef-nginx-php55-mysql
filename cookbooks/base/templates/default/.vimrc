" ソフトタブ
set expandtab
" 文字コード
set fenc=utf-8
" 自動インテント
set autoindent
" 行番号
set number
" タブ文字を何文字分で表示するか
set tabstop=4
" 自動で挿入されるインデントの幅
set shiftwidth=4
" 曖昧検索
set incsearch
" 自動インデント
set smartindent
" 行頭行末でカーソルが止まらない
set whichwrap=b,s,h,l,<,>,[,]
" クリップボードをOSと連携
set clipboard=unnamed
" 全角スペース	の表示
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
" nerdtreeをさらに便利に
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <f2> :NERDTree<CR>

" viとの互換性カット
set nocompatible


" フォント設定
if has('win32')
" Windows用
  set guifont=MS_Gothic:h10:cSHIFTJIS
" set guifont=MS_Mincho:h12:cSHIFTJIS
" 行間隔の設定
" set linespace=1
endif

" 2010-11-27 kawate - gvimrc を上書き -
" 印刷用フォント
if has('printer')
  if has('win32')
    "set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
    set printfont=MS_Gothic:h10:cSHIFTJIS
  endif
endif

" 2004/05/16 ウインドウの幅, ウインドウの高さ
set columns=120
set lines=55

" (GUI使用時)画面を黒地に白にする
colorscheme evening

" 2009-07-24 IME状態に応じたカーソル色を設定
" http://blog.blueblack.net/item_393
if has('multi_byte_ime')
" highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
" highlight CursorIM guifg=NONE guibg=#ecbcbc
  highlight CursorIM guifg=NONE guibg=#ff0000
endif


" 2011-12-01
" *.nsh ファイルをNSISでシンタックスハイライト(*.nsiはこの指定がなくてもハイライトされる)
" 参考: http://q.hatena.ne.jp/1208414020
autocmd BufNewFile,BufRead *.nsh set filetype=nsis


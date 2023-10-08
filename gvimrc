"===============================================================================
" 表示用フォント
"===============================================================================
" 2014-11-15 フォントにMigu 1Mを使う。
"            ※ Migu 1M フォントはインストールが必要。
"http://qiita.com/knt45/items/ee135182e62d14800e59#1-2
"set guifont=Migu_1M:h12
set guifont=Migu_1M:h11
" --
"2014-11-15 上記により以下はコメントアウト
"" フォント設定
"if has('win32')
"" Windows用
"  set guifont=MS_Gothic:h10:cSHIFTJIS
"" set guifont=MS_Mincho:h12:cSHIFTJIS
"" 行間隔の設定
"" set linespace=1
"endif


"===============================================================================
" 印刷用フォント
"===============================================================================
" 2010-11-27 kawate - gvimrc を上書き -
if has('printer')
  if has('win32')
    "set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
    set printfont=MS_Gothic:h10:cSHIFTJIS
  endif
endif


"===============================================================================
" ウインドウの幅, ウインドウの高さ
"===============================================================================
" 2004/05/16
set columns=120
set lines=55


"===============================================================================
" カラースキームの設定
"===============================================================================

"2014-11-15 colorschemeをmolokaiに設定
"※ 以下の行(NeoBundle)はvimrcに書かないといけない。
"   そうしないと別のファイルを開いたときなどにエラーになる (2015-11-21)
"NeoBundle 'https://github.com/tomasr/molokai'
"※ 以下の行はgvimrcに書かないといけない。
"   そうしないとカラースキームが反映されない (2015-11-21)
colorscheme molokai

"2014-11-15 上記により以下はコメントアウト
"" (GUI使用時)画面を黒地に白にする
"colorscheme evening


"===============================================================================
" IME状態に応じたカーソル色の設定
"===============================================================================
" 2009-07-24
" http://blog.blueblack.net/item_393
if has('multi_byte_ime')
" highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
" highlight CursorIM guifg=NONE guibg=#ecbcbc
  highlight CursorIM guifg=NONE guibg=#ff0000
endif


"===============================================================================
" シンタックスハイライトの設定 (NSIS)
"===============================================================================
" 2011-12-01
" *.nsh ファイルをNSISでシンタックスハイライト(*.nsiはこの指定がなくてもハイライトされる)
" 参考: http://q.hatena.ne.jp/1208414020
autocmd BufNewFile,BufRead *.nsh set filetype=nsis

"===============================================================================
" シンタックスハイライトの設定 (CMA3000関連)
"===============================================================================
" CMA3000のrctext(自動試験)のリモートコマンドスクリプトファイル
" *.cmd や init をシェルスクリプトの形式として表示する
au BufRead,BufNewFile *.cmd set filetype=sh
au BufRead,BufNewFile *.ref set filetype=sh
au BufRead,BufNewFile *.init set filetype=sh

"===============================================================================
" シンタックスハイライトの設定 (Markdown)
"===============================================================================
" *.md (Markdown) ファイル の Syntax ハイライト
" 2014-11-11
" 参考: http://rcmdnk.github.io/blog/2013/11/17/computer-vim/
" *.md等のファイルはMarkdownではなく modula2 のものと判断されてしまうので、これを変更する
"autocmd MyAutoGroup BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
au BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
" *等はitalic表示になりますが、 これが閉じられないと永遠とitalicが続いてしまうので、
" italicなハイライトを止めておきたい時は以下を有効にする。
"autocmd MyAutoGroup FileType markdown hi! def link markdownItalic LineNr



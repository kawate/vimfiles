"===============================================================================
" NeoBundleによるVimのプラグイン管理
"===============================================================================
" プラグインをインストール:
"   vimrc の NeoBundle で指定して、vim上から :NeoBundleInstall 
" アップデート:
"   vim上から :NeoBundleUpdate
" プラグインを削除:
"   vimrc から削除したいプラグインの NeoBundle の記述を消して、vim上から :NeoBundleClean を実行。
" ##########################################################################
" 2014-01-13 neobundleの設定
" http://d.hatena.ne.jp/xyk/20130930/1380507307
" http://www.slideshare.net/Shougo/neobundlevim
" http://wp.graphact.com/2012/11/09/hello-neobundle-vim
" ##########################################################################

" vim起動時のみruntimepathにneobundle.vimを追加してneobundle.vimを呼び出せるようにする
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))
" ----- インストールするプラグインの記述 こここから -----
" ここに使用したいプラグインのリポジトリアドレスを記述する
" github, vim.org に存在するプラグインのアドレスは省略できる
"   例: 'Shougo/unite.vim' は 'git://github.com/Shougo/unite.vim.git' と同じ
"       'CSApprox' のようにプラグイン名のみだとVim.orgのプラグインを表す

" NeoBundle自体をneobundleで管理する場合はNeoBundleFetchを使う
NeoBundleFetch 'Shougo/neobundle.vim'

" -----
NeoBundle 'Shougo/unite.vim'

" -----
" unite-outline: ソースファイルを解析し、アウトラインを表示する (2015-03-08)
" :Unite outlineで起動する
" ※ unite-outlineと同様のことが別にインストールしたVoomでも可能
"NeoBundle 'h1mesuke/unite-outline'
"↑最初これ指定してたらエラーになったので↓に変更して:NeoBundleCleanと:NeoBundleUpdateしたら動くようになった
NeoBundle 'https://github.com/Shougo/unite-outline'
" ※ C++のコードを見るときは exuberant ctags が必要なので以下にインストール(2015-03-08)
"    C:\data\shortcuts\ctags.exe

" 「:,u」と入力したときにunite-outlineの以下のコマンドを実行する
"  :Unite -no-quit -vertical outline
"    -no-quit: アウトラインのバッファを閉じないようにする
"    -vertical: 垂直分割で開く
"http://hinagishi.hateblo.jp/entry/2011/11/18/135701
noremap ,u <ESC>:Unite -no-quit -vertical outline<Return>

" -----
" autocomplpop.vim: キーワード補完リストを自動で出す
NeoBundle 'https://github.com/vim-scripts/AutoComplPop'
"  昔のやり方
"    http://blog.blueblack.net/item_164 のリンクから、
"    http://www.vim.org/scripts/script.php?script_id=1879 の最新版をダウンロードし、
"    vim-autocomplpop.zip
"    展開したファイル群を _runtime フォルダに移動

" -----
"eblook.vim: eblookプログラムを使って辞書を引く
NeoBundle 'https://github.com/deton/eblook.vim'
"  昔のやり方:
"     以下URLからダウンロード（eblook-vim-1.2.0.tar.bz2.tar.bz2）
"     http://www1.interq.or.jp/~deton/eblook-vim/
"     解凍したファイルをREADME.markdownを参考に移動
"     ただし、Vimのバージョンアップで面倒にならないように runtime ではなく _runtime フォルダに移動

" -----
"Alin.vim: コードの整形ツール
NeoBundle 'https://github.com/vim-scripts/Align'
" 以下のようなコードを選択後 \tsp を入力すると
" one two three four five
" six seven eight nine ten
" eleven twelve thirteen fourteen fifteen
" 以下のように整形してくれる
" one    two    three    four     five
" six    seven  eight    nine     ten
" eleven twelve thirteen fourteen fifteen
" 詳しい使い方は
" http://nanasi.jp/vim/align.html
" などを参照

" -----
"VOoM (Vim Outliner of Markups) is a plugin for Vim that emulates a two-pane text outliner.
NeoBundle 'https://github.com/vim-scripts/VOoM'
" 以下の紹介記事を見てインストール
" http://syotaro.ruhoh.com/posts/20121216-tips-vim-outliner/

" -----
"Indent Guides - インデント可視化プラグイン (2015-01-04)
NeoBundle 'nathanaelkane/vim-indent-guides'
" 以下の紹介記事を見てインストール
" http://qiita.com/tekkoc/items/923d7a7cf124e63adab5
" http://www.absolute-keitarou.net/blog/?p=1127
" http://www.mk-mode.com/octopress/2014/02/10/vim-installation-of-indent-plugin/
" Vim 起動時 vim-indent-guides を自動起動
let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level=2
" 自動カラー無効
let g:indent_guides_auto_colors=0
" 奇数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black
" 偶数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
" ガイドの幅
let g:indent_guides_guide_size = 1


" -----
"jedi.vim - Pythonをvimで書くときにコード補完を行ってくれる (2015-01-04)
"http://qiita.com/tekkoc/items/923d7a7cf124e63adab5
"http://togattti.hateblo.jp/entry/2013/10/16/214911
NeoBundle 'davidhalter/jedi-vim'

" -----
"Molokai color scheme for Vim
"※カラースキームの設定は gvimrc に記載する
NeoBundle 'https://github.com/tomasr/molokai'

" -----
" zoom.vim : 「+」、「-」キーで文字の大きさを変更できる (2015-11-23)
"NeoBundle 'https://github.com/taku-o/downloads/raw/master/zoom.vim' <= これだとうまくインストールされず
NeoBundle 'vim-scripts/zoom.vim'

" ----- インストールするプラグインの記述 ここまで -----
call neobundle#end()

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

" ##########################################################################


" 追加の runtime を置く場所(2010-11-26)
" -> NeoBundleに移行しているためコメントアウト(2016-05-02)
" set runtimepath+=C:\Vim\_runtime


" ##########################################################################
" 2007-03-21 kawate
" ChangeLog を編集する(changelog.vim) http://vimwiki.net/?tips%2F93
" ##########################################################################

" ChangeLog 形式のファイルを編集するためのプラグイン。ftplugin として Vim に標
" 準で添付されています。ChangeLog* や changelog* といった名前のファイルを読み
" 込むと、自動的に'filetype' が 'changelog' になり、次のようなコマンドが使える
" ようになります。

" :NewChangelogEntry     適切にアイテムを追加する。
" バッファローカルマッピング:
" <Leader>o              上と同様に適切にアイテムを追加する。
"                         <leader>はvimエディタデフォルトでは「\」を押す。
" これらのコマンドで挿入されるユーザ名を変更するには、次の変数を設定します。
let g:changelog_username = 'Hiroyuki KAWATE <Hiroyuki.Kawate@anritsu.com>'
let g:changelog_new_date_format = "%d  %u\n\n\t* やったこと:\n\t%c\n\n"

" 他にも、次の変数でこのプラグインをカスタマイズできます。
" エントリに入れる日付(と時間)の書式。
" let g:changelog_timeformat
" エントリを作成するときの書式。
" let g:changelog_new_date_format
" アイテムを作成するときの書式。
" let g:changelog_new_entry_format
" エントリを探すための検索パターン。
" let g:changelog_date_entry_search

" 参照：
" :h ft-changelog-plugin


" ##########################################################################
" 入力
" ##########################################################################

" Ctrl-Dを押したときに日付を入力
"inoremap <C-D> <C-R>=strftime("%Y/%m/%d")<CR>
inoremap <C-D> <C-R>=strftime("%Y-%m-%d")<CR>

" 2014-05-22
" Ctrl-Tを押したときに時刻を入力
" ※ Ctrl-Tはタグジャンプの「直前のタグに戻る」に割り当てられているみたいなので注意が必要
inoremap <C-T> <C-R>=strftime("%H:%M")<CR>
" 秒まで入力したいなら %H:%M:%S

" Windowsで一般的な切り抜き(CTRL-X)、コピー(CTRL-C)、貼り付け(CTRL-V)をvim でも使う
" CTRL-C にもともと割り当てられていた、コマンドのキャンセルを行いたい時には、 
" CTRL-Break(多くの環境では CTRL+Pause)をかわりに使ってください。
" 同じように、矩形選択したい時には、CTRL-V のかわりにCTRL-Qを使ってください。
" source $VIMRUNTIME/mswin.vim
" source C:\Vim\_runtime/mswin.vim " オリジナルをコピーしてカスタマイズ
source $VIMRUNTIME/mswin.vim " 2014-01-13 確認したところ標準と変わらないので元に戻す

" 2008-02-16 タブの切替えを、Mozilla Firefox 風にする。
" http://rewse.jp/fukugan/article.php?id=762
nnoremap <C-Tab> :tabnext<Return>
" 2011-02-12 あまり使わないキーマップをコメントアウトした
" nnoremap <C-S-Tab> :tabprevious<Return>
" nnoremap <C-t> :tabedit<Return>
" nnoremap <C-w> :tabclose<Return>


" 2009-10-20 「.」で始まる行を見出しとしたアウトラインを表示
nnoremap <C-O>  :DotOutlineTree<Return>

" ##########################################################################
" 表示
" ##########################################################################

" 起動時のメッセージを消す
set shortmess+=I

" タブや改行を表示 (list:表示)
set list

" どの文字でタブや改行を表示するかの設定
set listchars=tab:>-,extends:<,trail:-,eol:<

" 2010-11-28 全角スペースを灰色(Gray)で見えるようにする
" http://blog.miraclelinux.com/ctd/2006/07/vim__32e1.html
if has("syntax")
  syntax on " highlightで好みの色を設定できるようにする
  function! ActivateInvisibleIndicator()
    " ハイライトさせたいパターンを構文 (syntax) として定義
    " display キーワードは画面に表示される場合だけ処理させるための指示
    " containedin=ALL キーワードはどんなコンテキストでも一致させるための指示
    syntax match InvisibleJISX0208Space "　" display containedin=ALL
    " 白黒端末(term)ではアンダーラインを、色対応端末(ctermbg)とGUI(gvim)(guibg)では灰色(Gray)で表示する
    highlight InvisibleJISX0208Space term=underline ctermbg=Gray guibg=Gray
    " vim はファイル種別ごとにシンタックスハイライティングの定義を切り替える機能が
    " あるのですが、 .vimrc によるシンタックスハイライティング定義よりもそちらが優
    " 先されてしまうため、上記の設定が有効にならないことがあります。この問題の回避
    " に加え、シンタックスハイライティング機能の有無のチェックと .vimrc ファイルの
    " 再読み込みに対応させるようになっています。
  endf

  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
  augroup END
endif

" 行番号を表示 (nonumber:非表示)
set number

" パスカルのシンタックスをdelphi用にする。
" これで，"//"の後がコメントとして色づけ付けされたりする。
" C:\Vim\runtime\syntax\pascal.vim
" 参照先： http://members.jcom.home.ne.jp/advweb/index_p1_s13.html
let pascal_delphi=1


" 2010-11-28 ステータスラインの設定(statusline)
" http://www.e2esound.com/20080816/entry-id=303
" http://www.ksknet.net/vi/statusline.html
set statusline=%F%m%r%h%w\%=ft=%Y,fmt=%{&ff},enc=%{&fileencoding},line=%l/%L,col=%c
" 文字エンコーディング
" 行数=現在行数/全行数
" 文字エンコーディング=%{&fileencoding、現在行数/総行数=%l/%Lになります。
" %{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'} - fileencodingとfileformatを表示
" 右寄せは「%=」以下に項目を置くことでできます。
"
" %< - 行が長すぎるときに切り詰める位置
" %f - ファイル名（相対パス）
" %F - ファイル名（絶対パス）
" %t - ファイル名（パス無し)
" %m - 修正フラグ （[+]または[-]）
" %r - 読み込み専用フラグ（[RO]）
" %h - ヘルプバッファ
" %w - preview window flag
" %= - 左寄せと右寄せ項目の区切り（続くアイテムを右寄せにする）
" %l - 現在のカーソルの行番号
" %L - 総行数
" %c - column番号
" %V - カラム番号
" %P - カーソルの場所 %表示



" ##########################################################################
" バックアップ
" http://nanasi.jp/articles/howto/file/seemingly-unneeded-file.html
" ##########################################################################
" 2014-01-13 ユーザごとに作成できるようにvimrcファイルと同じ場所に移動

" バックアップファイルを作成する場所の指定
" set backupdir=c:/Vim/backup
set backupdir=~/vimfiles/tmp/backup

" 2015-07-06 Vim74のバージョンアップに伴いundofile を作成する場所を設定
" http://www.kaoriya.net/blog/2014/03/30/
" Vim は 7.4.227 から、デフォルトで undofile がオンの状態で配布されるようにな
" りました。そのためデフォルトではファイルを保存した時に同時に .{ファイル
" 名}.un~ を undo ファイルを作成します。
" この undo ファイルにより Vim は undo の情報をセッションを越えて保持できます。
set undodir=~/vimfiles/tmp/undo

" swapファイルを作成する場所の指定
set directory=~/vimfiles/tmp/swap " 2014-02-14

" .viminfo、_viminfoファイルは、コマンド、編集情報、検索情報、レジスタなどの 履歴情報を保存しているファイルです。
" このファイルはvimエディタの終了時に作成され、次回のvimエディタ起動時に、 状態を復元するために使用されます。
" 扱いやすいように出力場所とファイル名を変更
set viminfo+=n~/vimfiles/tmp/viminfo.txt

" ##########################################################################
" tabstop と softtabstop
" ##########################################################################

" - tabstop: 本当の TAB が画面上でどれだけの幅を占めるか。
" - softtabstop: TAB キーを押したときに、あたかも tabstopがこの値に設定された
"   ように振る舞うが、本当の TAB の幅は tabstop の値に保つためのオプション。

" 例えば、TAB キーを押したときに画面上で4列の幅インデントしたい場合は、tabstop
" の値を4に設定することで実際の TAB の幅を4列にするのが簡単です。しかしながら、
" 同じファイルを複数の人で編集する場合などに、ある人は TAB の幅を8と仮定し、あ
" る人は4と仮定していたりすると混乱が生じます。

" 多くの人が、実際の TAB の幅は 8 と仮定しているので tabstopは 8 にしておいた
" 方がよいです。そして、softtabstop の値を変更します。例えば:
"       set nosmarttab  <- 後で説明します。
"       set tabstop=8
"       set softtabstop=4
" としていると、例えば行頭で TAB キーを押すと4つのスペースが挿入され、もう一回
" TAB キーをおすと合計8つのスペースの代わりに TAB が一つ挿入されます。
"     カーソル
" ------->カーソル

" そして、バックスペース・キーは softtabstop の幅だけ、スペースを削除します。
" ------->カーソル
"     カーソル

" つまり、感覚的には本当の TAB を挿入したり削除しているようなのですが、実際の
" TAB は tabstop の値に保たれます。

"set tabstop=2 2005-11-05
"set tabstop=4 2008-05-09
"set tabstop=8
"set softtabstop=4
set tabstop=2
set softtabstop=2

" 2. shiftwidth: インデント・コマンドで挿入されるスペースの数。
" インデント・コマンドとは >> のようなコマンド群です。
"       <{motion}           >{motion}
"       <<                  >>
"       {Visual}[count]<    {Visual}[count]>
"       :[range]<           :[range]>
"       :[range]< {count}   :[range]> {count}
" また、これ以外に cindent におけるインデントでも shiftwidthの値が使われます。
" set shiftwidth=2 2005-11-05
set shiftwidth=2

" 3. smarttab: TAB の動作を賢くする
" smarttab オプションがセットされていると、
" ・行頭で TAB キーを押した場合には、shiftwidth の幅のスペースと TAB が挿入されます。
" ・それ以外の場所では本当の TAB が挿入されます、softtabstop が設定されているとその値です。
"set nosmarttab 2015-01-04
set smarttab

" 4. expandtab: 本当の TAB は挿入せず、tabstop の値の数のスペースを挿入する。
" softtabstop が設定されているとその数だけ。softtabstop が設定されていないと、
" バックスペース・キーでは、スペースが1つずつ削除されることになります。
" set noexpandtab
set expandtab "2009-01-06

" expandtabの時に、タブ文字を挿入したい場合は、
" http://nanasi.jp/articles/howto/editing/et-inserttab.html

" インデントの設定をファイルタイプ別に行う (2015-01-04)
" http://d.hatena.ne.jp/foussin/20121125/1353790707
"   (shiftwidth=スマートインデントの幅)
"   (tabstop=タブの画面上での幅)
"   (softtabstop=??? デフォルトは tabstop と同じらしい)
augroup vimrc
" Vimで現在のバッファ（開いているファイル）のfiletypeを取得するには、
" :echo &filetype
  autocmd! FileType cs         setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd! FileType c          setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd! FileType cpp        setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd! FileType python     setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END


" ##########################################################################
" 自動改行
" ##########################################################################
" デフォルトで78文字目で改行されてしまうのを自動改行しないようにする
" vimrc_exampleのtextwidth設定を上書き
" http://d.hatena.ne.jp/WK6/20120606/1338993826
autocmd FileType text setlocal textwidth=0

" ##########################################################################
" grep
" ##########################################################################

" 2009-11-09  vimでgrepとかするときに、対象があるときのみ自動でquickfixを開く
"   http://webtech-walker.com/archive/2009/09/29213156.html
"   vimでgrepとかするときに、結果はquickfixに反映されるわけですが、これは自動で開
"   いてくれないのでgrepしたあと:cwとかして開かないといけないのがちと面倒です。
"   下記のようにcwもgrepと一緒に指定してもいいんですけど、| cwを毎回タイプするのも
"   面倒です。
"   :vimgrep /hoge/j * | cw
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

" 2009-11-09 vimgrep をデフォルトの grep プログラムとして使用する
" → うまく動かなかった！「自動でquickfixを開く」が動かない。
" http://blog.kaihatsubu.com/archives/001346.html
" http://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-grep
" :grep を :vimgrep のエイリアスにするには、gvimrc に以下の行を追加する。 
" set grepprg=internal

" ##########################################################################
" クリップボードへのコピーペースト
" ##########################################################################
" 2011-12-17
" 削除内容もクリップボードに入ってしまい、クリップボードの内容が置き変わってしまうので止めた。
" 2011-11-01
" 以下の設定で、通常、「無名レジスタ」に入る、 ヤンク、カットの操作で指定した
" テキストが、「*レジスタ」にも入るようになります。「*レジスタ」にデータを入れ
" ると、クリップボードにデータが入るので、vimエディタでヤンク、カットしたテキ
" ストを、他のアプリケーションで即ペーストして使用できることになります。
" http://nanasi.jp/articles/howto/editing/clipboard.html
"set clipboard+=unnamed

" ##########################################################################
" <C-k>yで英和辞書(GENE95 辞書)を引けるようにする (2013-02-03)
" ##########################################################################
" セットアップ手順:
"   http://nanasi.jp/articles/vim/dicwin_vim.html
"   以下URKからダウンロード・解凍したGENE95 辞書ファイル(gene.txt)をvimfilesフォルダに移動
"   http://www.namazu.org/~tsuchiya/sdic/data/gene.html
"   vimfilesフォルダについては以下参照
"   http://nanasi.jp/articles/howto/config/runtimepath.html

" ##########################################################################
" <C-k>yで英辞郎を引けるようにする (2013-02-03)
" ##########################################################################
" 使い方:
"   英単語の上にカーソルを合わせ <C-k>y で単語が引ける
"   qで辞書を閉じる
"   Space/BSで字義のページ送り/戻り
"   K/Jで候補の上下
"   <C-p> <C-n>で履歴の上下
" セットアップ手順:
"   以下を参考にEPWINGファイル変換をUbuntu PCで作成
"     http://blog.craftgear.net/50165b2c048026831d000002/title
"     https://github.com/fumiyas/eijiro-fpw
"     http://www.crystal-creation.com/software/tool/study/ebwin/catalogs.htm
"   - freepwingとJcode.pmをUbuntuソフトウェアセンターでインストール
"   - 以下コマンドでgithubから変換スクリプトをclone
"       git clone https://github.com/fumiyas/eijiro-fpw
"   - Makefileを編集してEIJIROのバージョンを自分の持ってる英辞郎のバージョンに変更
"       EIJIROVER = 134
"   - 英辞郎のデータファイル(EIJI-134.TXT)をMakefileのSRCDIRで指定した(スクリプトと同じ)場所に置く
"   - 以下コマンドで辞書ファイルを生成（honmonというファイル 約650MB）
"       make -I /usr/share/freepwing
"   - 以下コマンドでカタログファイル(catalogs)を作成
"       /usr/share/freepwing/catdump -u catalogs.txt catalogs
"   - 出来上がった2つのファイルを以下のように配置
"       C:/Vim/eijiro/
"                   |-- catalog
"                   |-- eijiro/
"                            |-- data/
"                                   | -- honmon
"   eblookプログラムのセットアップ
"     以下URLからeblookプログラムをダウンロード(eblook-1.6.1+media-20110801-ebu-4.4.3-20110801.exe)
"     http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook
"     eblook.exeにリネームしてc:\vimに移動
"     コマンドラインで以下のように使えることを確認
"       C:\Documents and Settings\a1195046>eblook c:/vim/eijiro
"       eblook> list
"        1. eijiro      英辞郎
"       eblook> select 1
"       eblook> search apple
"        1. 5115:1324   apple
"        2. 5115:1858   Apple
"     使い方の参考: http://openlab.jp/edict/eblook/eblook.html#SEC2
"
"   eblook.vimのセットアップ
"     以下のように辞書ファイルをeblook.vimに登録
"let eblook_dictlist1 = [{'book': 'c:/Vim/eijiro/','name': 'eijiro','title': '英辞郎',}]
let eblook_dictlist1 = [{'book': 'c:/eblook/eijiro/','name': 'eijiro','title': '英辞郎',}]
"     ※ 以下は最初うまく動かなかったときに、ダウンロードしたEPWINGファイルを使って試した設定
"        データは http://openlab.ring.gr.jp/edict/fpw/#ascii からダウンロード
"let eblook_dictlist1 = [{'book': 'c:/Vim/ASCDATES/','name': 'ascdates','title': 'アスキー手帳',}]


"===============================================================================
" カレントディレクトリを自動的に変更する (2015-11-21)
"===============================================================================
"これがオンであるとファイルを開くとき、バッファを切り替えるとき、バッファを削
"除するとき、ウィンドウを開閉するときに毎回作業ディレクトリが変更される。開か
"れた／選択されたファイルを含んでいるディレクトリがカレントディレクトリになる。
set autochdir



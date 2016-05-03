
==========================================
vimfilesのアップデート手順
==========================================

vimfilesをgitでpullする

(NeoBundleでエラーが出る場合)
~\.vim\bundle\neobundle.vim をgitでpullする

vim起動してエラーが出ないことを確認

==========================================
NeoBundleで入れたプラグインのアップデート
==========================================

vim起動して :NeoBundleUpdate を実行する

==========================================
Vimのアップデート手順
==========================================

http://www.kaoriya.net/ からVimのzipファイルをダウンロードして解凍する。

既存の C:\Vim フォルダを別の名前にして、ダウンロードしたものに置き換える。

起動して :version で変更されていることを確認する。:help も新しくなっていることを確認する。

Vimフォルダ に vimfilesフォルダと バージョンアップ履歴.txt のショートカットを置いておく。

==========================================
Vimの初回セットアップ手順
==========================================

--
Vimのインストール

http://www.kaoriya.net/からダウンロードし、
解凍してC:\Vimに移動する。
何をインストールしたかわかりやすいように、バージョン（ダウンロードしたファイルのファイル名）のメモをVimフォルダに置いておく。

--
Git for Windows のインストール
https://git-for-windows.github.io/
※ インストール時のオプションで、
   「Run Git from the Windows Command Prompt」を選択する
   （gitコマンドをPATHに追加する）

--
TortoiseGit のインストール
https://tortoisegit.org/

--
vimfiles の取得

cd %userprofile%
git clone https://github.com/kawate/vimfiles

これでvimfilesをVimの$HOMEの下に作成する。
$HOMEの実際の場所はVimを起動して:echo $HOMEで確認できる。
vimrc/gvimrcを探す場所と順番は:versionで確認できる。

--
バックアップファイル、swapファイル、viminfoファイルを作成する場所を作成する
これらの場所は vimrc で指定してある

cd %userprofile%
mkdir vimfiles\tmp
mkdir vimfiles\tmp\backup
mkdir vimfiles\tmp\swap

--
neobundleをインストール
コマンドプロンプトで以下のように実行

mkdir %userprofile%\.vim\bundle
cd %userprofile%\.vim\bundle
git clone git://github.com/Shougo/neobundle.vim

--
gvimrcで指定している「Migu 1M」フォントのインストール

以下から「Migu 1M」フォントのzipファイルをダウンロードし解凍する。
http://mix-mplus-ipa.sourceforge.jp/migu/
以下ファイルをそれぞれ右クリックして「インストール」を実行する。
migu-1m-bold.ttf
migu-1m-regular.ttf

--
Vimを起動する

NeoBundleによりvimrcで指定したプラグインがインストールされる。
Vimを起動しフォント設定で「Migu 1M」が選択されていることを確認する。

--
vimfilesフォルダのショートカットを C:\Vim に置いておく

--
*管理者権限で*コマンドプロンプトを開き、
assocコマンドとftypeコマンドを使って以下のようにする。

>assoc .txt
.txt=txtfile

>ftype txtfile="C:\vim\gvim.exe" --remote-tab-silent "%1"
txtfile="C:\vim\gvim.exe" --remote-tab-silent "%1"

>ftype txtfile
txtfile="C:\vim\gvim.exe" --remote-tab-silent "%1"

--
以下の動作を確認する
- ファイルをダブル・クリックをしたときに新規タブで表示する
- タブの切替えを、Mozilla Firefox 風にする
- IME状態に応じたカーソル色を設定 (IME ONで赤くなる.gvimrcで指定)



==========================================
NeoBundleとGitによる管理への移行の内容
==========================================

--
以下のファイルをGitHubのリポジトリに移動
_vimrc  → vimrc
_gvimrc → gvimrc

--
英辞郎の英単語を<c-k>yで引けるようにする
  辞書引きツール eblook.exe と、変換済みの辞書データ eijiro フォルダを C:\eblook に作成し、
  eblook.exe がコマンドとして起動できるように PATH変数に C:\eblook を追加する。
  その他詳細はvimrcのeblookのところを参照。

--
カスタマイズして使っているpluginやsyntaxファイルは
vimfilesの以下のフォルダに格納して使う

  + plugin
    + dot.vim   DotOutlineTree: アウトラインプロセッサとして使う
      前は C:\data\application\Vim\arc\Vim7.3\dot.vim にあったものをコピー

  + syntax
    + wiki.vim  Wiki用シンタックスファイルの追加
    + ttl.vim   TeraTermマクロ用シンタックスファイルの追加 → 実施

これらは昔は C:\Vim\_runtime に置き、_vimrc に
set runtimepath+=C:\Vim\_runtime
の行を追加して使っていた

--
環境変数の設定 → 未実施
vimからRubyスクリプトを実行 → 未実施
Rubyのリファレンスを表示 → 未実施




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
Vimのセットアップ手順
==========================================

--
Vimのインストール

Vim7.4をhttp://www.kaoriya.net/からダウンロード
解凍してC:\Vimに移動

--
Gitのインストール

Git for Windows
http://msysgit.github.io/
※ インストール時のオプションで、
   「Run Git from the Windows Command Prompt」を選択する
   （gitコマンドをPATHに追加する）

TortoiseGit
https://code.google.com/p/tortoisegit/

GitHub native app
https://help.github.com/articles/set-up-git

--
以下のファイルをGitHubのリポジトリに移動
https://github.com/kawate/vimfiles
_vimrc  → vimrc
_gvimrc → gvimrc

GitHubのvimfilesフォルダのローカルリポジトリをVimが参照する場所に作成
  今回は$HOMEの下（C:\Users\kawate\vimfiles）に作成
    vimrc/gvimrcを探す場所と順番は:versionで確認できる
    $HOMEの実際の場所は、Vimを起動して:echo $HOMEで確認できる

--
設定ファイル一式の取得

設定ファイルを %userprofile% 下に置く。
また、バックアップやviminfoを置く場所を作成する。
コマンドプロンプトで以下のように実行

>cd %userprofile%
>git clone https://github.com/kawate/vimfiles
>mkdir vimfiles\tmp
>mkdir vimfiles\tmp\backup
>mkdir vimfiles\tmp\swap

--
neobundleをインストール
コマンドプロンプトで以下のように実行

mkdir %userprofile%\.vim\bundle
cd %userprofile%\.vim\bundle
git clone git://github.com/Shougo/neobundle.vim

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
ヘルプの日本語化 → すでに日本語化済みなので不要

--
全角スペースの強調表示 → vimrcに定義済み


--
キーワード補完リストを自動で出す
autocomplpop.vim → neobundleでインストールするように変更。詳細はvimrc参照

[昔のやり方]
http://blog.blueblack.net/item_164 のリンクから、
http://www.vim.org/scripts/script.php?script_id=1879 の最新版をダウンロードし、
vim-autocomplpop.zip
展開したファイル群を _runtime フォルダに移動

--
英辞郎で英単語を<c-k>yで引けるようにする
eblook.vim

eblook.vimはneobundleでインストールするように変更。詳細はvimrc参照。
辞書引きツール eblook.exe と、変換済みの辞書データ eijiro フォルダを C:\eblook に移動
eblook.exe がコマンドとして起動できるように PATH変数に C:\eblook を追加。
その他使い方などはvimrc参照。

--
その他pluginやsyntaxファイルの移動

C:\Vim\_runtime
においていた以下のファイルを
C:\Users\kawate\vimfiles
にコピー

plugin
  dot.vim   DotOutlineTree: アウトラインプロセッサとして使う
  前は C:\data\application\Vim\arc\Vim7.3\dot.vim にあったものをコピー

syntax
  wiki.vim  Wiki用シンタックスファイルの追加
  ttl.vim   TeraTermマクロ用シンタックスファイルの追加 → 実施

--
追加の runtime を置く場所を作成
C:\Vim\_runtime を作成して、
_vimrc に以下の行を追加
set runtimepath+=C:\Vim\_runtime

--
タブ機能1: ファイルをダブル・クリックをしたときに新規タブで表示する → 動作OK確認
タブ機能2: タブの切替えを、Mozilla Firefox 風にする → 動作OK確認
IME状態に応じたカーソル色を設定 → 動作OK確認

--
環境変数の設定 → 未実施
vimからRubyスクリプトを実行 → 未実施
Rubyのリファレンスを表示 → 未実施



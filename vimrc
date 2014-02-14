" ##########################################################################
" 2014-01-13 neobundle�̐ݒ�
" http://d.hatena.ne.jp/xyk/20130930/1380507307
" http://www.slideshare.net/Shougo/neobundlevim
" http://wp.graphact.com/2012/11/09/hello-neobundle-vim
" ##########################################################################

" vim�N�����̂�runtimepath��neobundle.vim��ǉ�����
" neobundle.vim���Ăяo����悤�ɂ���
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏�����
call neobundle#rc(expand('~/.vim/bundle'))

" NeoBundle���X�V���邽�߂̐ݒ�
NeoBundleFetch 'Shougo/neobundle.vim'

" ==========================================================================
" �ǂݍ��ރv���O�C�����L��
" �v���O�C���̃��|�W�g���A�h���X���w�肷��
" - github, vim.org �ɑ��݂���v���O�C���̃A�h���X�͏ȗ��ł���
"   - 'Shougo/unite.vim' �� 'git://github.com/Shougo/unite.vim.git' �Ɠ���
"   - 'CSApprox' �̂悤�Ƀv���O�C�����݂̂���Vim.org�̃v���O�C����\��

NeoBundle 'Shougo/unite.vim'
" NeoBundle 'itchyny/lightline.vim'

" autocomplpop.vim: �L�[���[�h�⊮���X�g�������ŏo��
NeoBundle 'https://github.com/vim-scripts/AutoComplPop'

"eblook.vim: eblook�v���O�������g���Ď���������
NeoBundle 'https://github.com/deton/eblook.vim'
"  �̂̂���:
"     �ȉ�URL����_�E�����[�h�ieblook-vim-1.2.0.tar.bz2.tar.bz2�j
"     http://www1.interq.or.jp/~deton/eblook-vim/
"     �𓀂����t�@�C����README.markdown���Q�l�Ɉړ�
"     �������AVim�̃o�[�W�����A�b�v�Ŗʓ|�ɂȂ�Ȃ��悤�� runtime �ł͂Ȃ� _runtime �t�H���_�Ɉړ�

" �� �o�^�����v���O�C����
"    �C���X�g�[����  :NeoBundleInstall
"    �A�b�v�f�[�g��  :NeoBundleUpdate
"    �ōs���B
" ==========================================================================

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
NeoBundleCheck

" ##########################################################################


" 2010-11-26 �ǉ��� runtime ��u���ꏊ���쐬
set runtimepath+=C:\Vim\_runtime


" ##########################################################################
" 2007-03-21 kawate
" ChangeLog ��ҏW����(changelog.vim) http://vimwiki.net/?tips%2F93
" ##########################################################################

" ChangeLog �`���̃t�@�C����ҏW���邽�߂̃v���O�C���Bftplugin �Ƃ��� Vim �ɕW
" ���œY�t����Ă��܂��BChangeLog* �� changelog* �Ƃ��������O�̃t�@�C����ǂ�
" ���ނƁA�����I��'filetype' �� 'changelog' �ɂȂ�A���̂悤�ȃR�}���h���g����
" �悤�ɂȂ�܂��B

" :NewChangelogEntry     �K�؂ɃA�C�e����ǉ�����B
" �o�b�t�@���[�J���}�b�s���O:
" <Leader>o              ��Ɠ��l�ɓK�؂ɃA�C�e����ǉ�����B
"                         <leader>��vim�G�f�B�^�f�t�H���g�ł́u\�v�������B
" �����̃R�}���h�ő}������郆�[�U����ύX����ɂ́A���̕ϐ���ݒ肵�܂��B
let g:changelog_username = 'Hiroyuki KAWATE <Hiroyuki.Kawate@anritsu.com>'
let g:changelog_new_date_format = "%d  %u\n\n\t* ���������:\n\t%c\n\n"

" ���ɂ��A���̕ϐ��ł��̃v���O�C�����J�X�^�}�C�Y�ł��܂��B
" �G���g���ɓ������t(�Ǝ���)�̏����B
" let g:changelog_timeformat
" �G���g�����쐬����Ƃ��̏����B
" let g:changelog_new_date_format
" �A�C�e�����쐬����Ƃ��̏����B
" let g:changelog_new_entry_format
" �G���g����T�����߂̌����p�^�[���B
" let g:changelog_date_entry_search

" �Q�ƁF
" :h ft-changelog-plugin


" ##########################################################################
" ����
" ##########################################################################

" Ctrl-D���������Ƃ��ɓ��t�����
"inoremap <C-D> <C-R>=strftime("%Y/%m/%d")<CR>
inoremap <C-D> <C-R>=strftime("%Y-%m-%d")<CR>


" Windows�ň�ʓI�Ȑ؂蔲��(CTRL-X)�A�R�s�[(CTRL-C)�A�\��t��(CTRL-V)��vim �ł��g��
" CTRL-C �ɂ��Ƃ��Ɗ��蓖�Ă��Ă����A�R�}���h�̃L�����Z�����s���������ɂ́A 
" CTRL-Break(�����̊��ł� CTRL+Pause)�������Ɏg���Ă��������B
" �����悤�ɁA��`�I�����������ɂ́ACTRL-V �̂�����CTRL-Q���g���Ă��������B
" source $VIMRUNTIME/mswin.vim
" source C:\Vim\_runtime/mswin.vim " �I���W�i�����R�s�[���ăJ�X�^�}�C�Y
source $VIMRUNTIME/mswin.vim " 2014-01-13 �m�F�����Ƃ���W���ƕς��Ȃ��̂Ō��ɖ߂�


" 2008-02-16 �^�u�̐ؑւ����AMozilla Firefox ���ɂ���B
" http://rewse.jp/fukugan/article.php?id=762
nnoremap <C-Tab> :tabnext<Return>
" 2011-02-12 ���܂�g��Ȃ��L�[�}�b�v���R�����g�A�E�g����
" nnoremap <C-S-Tab> :tabprevious<Return>
" nnoremap <C-t> :tabedit<Return>
" nnoremap <C-w> :tabclose<Return>


" 2009-10-20 �u.�v�Ŏn�܂�s�����o���Ƃ����A�E�g���C����\��
nnoremap <C-O>  :DotOutlineTree<Return>

" ##########################################################################
" �\��
" ##########################################################################

" �N�����̃��b�Z�[�W������
set shortmess+=I

" �^�u����s��\�� (list:�\��)
set list

" �ǂ̕����Ń^�u����s��\�����邩�̐ݒ�
set listchars=tab:>-,extends:<,trail:-,eol:<

" 2010-11-28 �S�p�X�y�[�X���D�F(Gray)�Ō�����悤�ɂ���
" http://blog.miraclelinux.com/ctd/2006/07/vim__32e1.html
if has("syntax")
  syntax on " highlight�ōD�݂̐F��ݒ�ł���悤�ɂ���
  function! ActivateInvisibleIndicator()
    " �n�C���C�g���������p�^�[�����\�� (syntax) �Ƃ��Ē�`
    " display �L�[���[�h�͉�ʂɕ\�������ꍇ�������������邽�߂̎w��
    " containedin=ALL �L�[���[�h�͂ǂ�ȃR���e�L�X�g�ł���v�����邽�߂̎w��
    syntax match InvisibleJISX0208Space "�@" display containedin=ALL
    " �����[��(term)�ł̓A���_�[���C�����A�F�Ή��[��(ctermbg)��GUI(gvim)(guibg)�ł͊D�F(Gray)�ŕ\������
    highlight InvisibleJISX0208Space term=underline ctermbg=Gray guibg=Gray
    " vim �̓t�@�C����ʂ��ƂɃV���^�b�N�X�n�C���C�e�B���O�̒�`��؂�ւ���@�\��
    " ����̂ł����A .vimrc �ɂ��V���^�b�N�X�n�C���C�e�B���O��`���������炪�D
    " �悳��Ă��܂����߁A��L�̐ݒ肪�L���ɂȂ�Ȃ����Ƃ�����܂��B���̖��̉��
    " �ɉ����A�V���^�b�N�X�n�C���C�e�B���O�@�\�̗L���̃`�F�b�N�� .vimrc �t�@�C����
    " �ēǂݍ��݂ɑΉ�������悤�ɂȂ��Ă��܂��B
  endf

  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
  augroup END
endif

" �s�ԍ���\�� (nonumber:��\��)
set number

" �p�X�J���̃V���^�b�N�X��delphi�p�ɂ���B
" ����ŁC"//"�̌オ�R�����g�Ƃ��ĐF�Â��t�����ꂽ�肷��B
" C:\Vim\runtime\syntax\pascal.vim
" �Q�Ɛ�F http://members.jcom.home.ne.jp/advweb/index_p1_s13.html
let pascal_delphi=1


" 2010-11-28 �X�e�[�^�X���C���̐ݒ�(statusline)
" http://www.e2esound.com/20080816/entry-id=303
" http://www.ksknet.net/vi/statusline.html
set statusline=%F%m%r%h%w\%=ft=%Y,fmt=%{&ff},enc=%{&fileencoding},line=%l/%L,col=%c
" �����G���R�[�f�B���O
" �s��=���ݍs��/�S�s��
" �����G���R�[�f�B���O=%{&fileencoding�A���ݍs��/���s��=%l/%L�ɂȂ�܂��B
" %{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'} - fileencoding��fileformat��\��
" �E�񂹂́u%=�v�ȉ��ɍ��ڂ�u�����Ƃłł��܂��B
"
" %< - �s����������Ƃ��ɐ؂�l�߂�ʒu
" %f - �t�@�C�����i���΃p�X�j
" %F - �t�@�C�����i��΃p�X�j
" %t - �t�@�C�����i�p�X����)
" %m - �C���t���O �i[+]�܂���[-]�j
" %r - �ǂݍ��ݐ�p�t���O�i[RO]�j
" %h - �w���v�o�b�t�@
" %w - preview window flag
" %= - ���񂹂ƉE�񂹍��ڂ̋�؂�i�����A�C�e�����E�񂹂ɂ���j
" %l - ���݂̃J�[�\���̍s�ԍ�
" %L - ���s��
" %c - column�ԍ�
" %V - �J�����ԍ�
" %P - �J�[�\���̏ꏊ %�\��



" ##########################################################################
" �o�b�N�A�b�v
" http://nanasi.jp/articles/howto/file/seemingly-unneeded-file.html
" ##########################################################################
" 2014-01-13 ���[�U���Ƃɍ쐬�ł���悤��vimrc�t�@�C���Ɠ����ꏊ�Ɉړ�

" �o�b�N�A�b�v�t�@�C�����쐬����ꏊ�̎w��
" set backupdir=c:/Vim/backup
set backupdir=~/vimfiles/tmp/backup

" swap�t�@�C�����쐬����ꏊ�̎w��
set directory=~/vimfiles/tmp/swap " 2014-02-14

" .viminfo�A_viminfo�t�@�C���́A�R�}���h�A�ҏW���A�������A���W�X�^�Ȃǂ� ��������ۑ����Ă���t�@�C���ł��B
" ���̃t�@�C����vim�G�f�B�^�̏I�����ɍ쐬����A�����vim�G�f�B�^�N�����ɁA ��Ԃ𕜌����邽�߂Ɏg�p����܂��B
" �����₷���悤�ɏo�͏ꏊ�ƃt�@�C������ύX
set viminfo+=n~/vimfiles/tmp/viminfo.txt

" ##########################################################################
" tabstop �� softtabstop
" ##########################################################################

" - tabstop: �{���� TAB ����ʏ�łǂꂾ���̕����߂邩�B
" - softtabstop: TAB �L�[���������Ƃ��ɁA�������� tabstop�����̒l�ɐݒ肳�ꂽ
"   �悤�ɐU�镑�����A�{���� TAB �̕��� tabstop �̒l�ɕۂ��߂̃I�v�V�����B

" �Ⴆ�΁ATAB �L�[���������Ƃ��ɉ�ʏ��4��̕��C���f���g�������ꍇ�́Atabstop
" �̒l��4�ɐݒ肷�邱�ƂŎ��ۂ� TAB �̕���4��ɂ���̂��ȒP�ł��B�������Ȃ���A
" �����t�@�C���𕡐��̐l�ŕҏW����ꍇ�ȂǂɁA����l�� TAB �̕���8�Ɖ��肵�A��
" ��l��4�Ɖ��肵�Ă����肷��ƍ����������܂��B

" �����̐l���A���ۂ� TAB �̕��� 8 �Ɖ��肵�Ă���̂� tabstop�� 8 �ɂ��Ă�����
" �����悢�ł��B�����āAsofttabstop �̒l��ύX���܂��B�Ⴆ��:
"       set nosmarttab  <- ��Ő������܂��B
"       set tabstop=8
"       set softtabstop=4
" �Ƃ��Ă���ƁA�Ⴆ�΍s���� TAB �L�[��������4�̃X�y�[�X���}������A�������
" TAB �L�[�������ƍ��v8�̃X�y�[�X�̑���� TAB ����}������܂��B

"     �J�[�\��
" ------->�J�[�\��

" �����āA�o�b�N�X�y�[�X�E�L�[�� softtabstop �̕������A�X�y�[�X���폜���܂��B

" ------->�J�[�\��
"     �J�[�\��

" �܂�A���o�I�ɂ͖{���� TAB ��}��������폜���Ă���悤�Ȃ̂ł����A���ۂ�
" TAB �� tabstop �̒l�ɕۂ���܂��B


" 2. shiftwidth: �C���f���g�E�R�}���h�ő}�������X�y�[�X�̐��B
" �C���f���g�E�R�}���h�Ƃ� >> �̂悤�ȃR�}���h�Q�ł��B
"       <{motion}           >{motion}
"       <<                  >>
"       {Visual}[count]<    {Visual}[count]>
"       :[range]<           :[range]>
"       :[range]< {count}   :[range]> {count}
" �܂��A����ȊO�� cindent �ɂ�����C���f���g�ł� shiftwidth�̒l���g���܂��B

" 3. smarttab: TAB �̓������������
" smarttab �I�v�V�������Z�b�g����Ă���ƁA�s���� TAB �L�[���������ꍇ�ɂ́A
" shiftwidth �̕��̃X�y�[�X�� TAB ���}������܂��B����ȊO�̏ꏊ�ł͖{���� TAB
" ���}������܂��Asofttabstop ���ݒ肳��Ă���Ƃ��̒l�ł��B

" 4. expandtab: �{���� TAB �͑}�������Atabstop �̒l�̐��̃X�y�[�X��}������B
" softtabstop ���ݒ肳��Ă���Ƃ��̐������Bsofttabstop ���ݒ肳��Ă��Ȃ��ƁA
" �o�b�N�X�y�[�X�E�L�[�ł́A�X�y�[�X��1���폜����邱�ƂɂȂ�܂��B

" set tabstop=2         <- 2005-11-05
" set softtabstop=4
" set shiftwidth=2      <- 2005-11-05
" set smarttab
" " �{���� TAB �͑}���������Ȃ��ꍇ�� expandtab �ɂ���B
" set noexpandtab

set nosmarttab
"set tabstop=8
"set tabstop=4 2008-05-09
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab "2009-01-06

" ##########################################################################
" grep
" ##########################################################################

" 2009-11-09  vim��grep�Ƃ�����Ƃ��ɁA�Ώۂ�����Ƃ��̂ݎ�����quickfix���J��
"   http://webtech-walker.com/archive/2009/09/29213156.html
"   vim��grep�Ƃ�����Ƃ��ɁA���ʂ�quickfix�ɔ��f�����킯�ł����A����͎����ŊJ
"   ���Ă���Ȃ��̂�grep��������:cw�Ƃ����ĊJ���Ȃ��Ƃ����Ȃ��̂����Ɩʓ|�ł��B
"   ���L�̂悤��cw��grep�ƈꏏ�Ɏw�肵�Ă�������ł����ǁA| cw�𖈉�^�C�v����̂�
"   �ʓ|�ł��B
"   :vimgrep /hoge/j * | cw
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

" 2009-11-09 vimgrep ���f�t�H���g�� grep �v���O�����Ƃ��Ďg�p����
" �� ���܂������Ȃ������I�u������quickfix���J���v�������Ȃ��B
" http://blog.kaihatsubu.com/archives/001346.html
" http://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-grep
" :grep �� :vimgrep �̃G�C���A�X�ɂ���ɂ́Agvimrc �Ɉȉ��̍s��ǉ�����B 
" set grepprg=internal

" ##########################################################################
" �N���b�v�{�[�h�ւ̃R�s�[�y�[�X�g
" ##########################################################################

" 2011-12-17
" �폜���e���N���b�v�{�[�h�ɓ����Ă��܂��A�N���b�v�{�[�h�̓��e���u���ς���Ă��܂��̂Ŏ~�߂��B
" 2011-11-01
" �ȉ��̐ݒ�ŁA�ʏ�A�u�������W�X�^�v�ɓ���A �����N�A�J�b�g�̑���Ŏw�肵���e�L�X�g���A�u*���W�X�^�v�ɂ�����悤�ɂȂ�܂��B�u*���W�X�^�v�Ƀf�[�^������ƁA�N���b�v�{�[�h�Ƀf�[�^������̂ŁAvim�G�f�B�^�Ń����N�A�J�b�g�����e�L�X�g���A���̃A�v���P�[�V�����ő��y�[�X�g���Ďg�p�ł��邱�ƂɂȂ�܂��B
" http://nanasi.jp/articles/howto/editing/clipboard.html
"set clipboard+=unnamed

" ##########################################################################
" <C-k>y�ŉp�a����(GENE95 ����)��������悤�ɂ��� (2013-02-03)
" ##########################################################################
" �Z�b�g�A�b�v�菇:
"   http://nanasi.jp/articles/vim/dicwin_vim.html
"   �ȉ�URK����_�E�����[�h�E�𓀂���GENE95 �����t�@�C��(gene.txt)��vimfiles�t�H���_�Ɉړ�
"   http://www.namazu.org/~tsuchiya/sdic/data/gene.html
"   vimfiles�t�H���_�ɂ��Ă͈ȉ��Q��
"   http://nanasi.jp/articles/howto/config/runtimepath.html

" ##########################################################################
" <C-k>y�ŉp���Y��������悤�ɂ��� (2013-02-03)
" ##########################################################################
" �g����:
"   �p�P��̏�ɃJ�[�\�������킹 <C-k>y �ŒP�ꂪ������
"   q�Ŏ��������
"   Space/BS�Ŏ��`�̃y�[�W����/�߂�
"   K/J�Ō��̏㉺
"   <C-p> <C-n>�ŗ����̏㉺
" �Z�b�g�A�b�v�菇:
"   �ȉ����Q�l��EPWING�t�@�C���ϊ���Ubuntu PC�ō쐬
"     http://blog.craftgear.net/50165b2c048026831d000002/title
"     https://github.com/fumiyas/eijiro-fpw
"     http://www.crystal-creation.com/software/tool/study/ebwin/catalogs.htm
"   - freepwing��Jcode.pm��Ubuntu�\�t�g�E�F�A�Z���^�[�ŃC���X�g�[��
"   - �ȉ��R�}���h��github����ϊ��X�N���v�g��clone
"       git clone https://github.com/fumiyas/eijiro-fpw
"   - Makefile��ҏW����EIJIRO�̃o�[�W�����������̎����Ă�p���Y�̃o�[�W�����ɕύX
"       EIJIROVER = 134
"   - �p���Y�̃f�[�^�t�@�C��(EIJI-134.TXT)��Makefile��SRCDIR�Ŏw�肵��(�X�N���v�g�Ɠ���)�ꏊ�ɒu��
"   - �ȉ��R�}���h�Ŏ����t�@�C���𐶐��ihonmon�Ƃ����t�@�C�� ��650MB�j
"       make -I /usr/share/freepwing
"   - �ȉ��R�}���h�ŃJ�^���O�t�@�C��(catalogs)���쐬
"       /usr/share/freepwing/catdump -u catalogs.txt catalogs
"   - �o���オ����2�̃t�@�C�����ȉ��̂悤�ɔz�u
"       C:/Vim/eijiro/
"                   |-- catalog
"                   |-- eijiro/
"                            |-- data/
"                                   | -- honmon
"   eblook�v���O�����̃Z�b�g�A�b�v
"     �ȉ�URL����eblook�v���O�������_�E�����[�h(eblook-1.6.1+media-20110801-ebu-4.4.3-20110801.exe)
"     http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook
"     eblook.exe�Ƀ��l�[������c:\vim�Ɉړ�
"     �R�}���h���C���ňȉ��̂悤�Ɏg���邱�Ƃ��m�F
"       C:\Documents and Settings\a1195046>eblook c:/vim/eijiro
"       eblook> list
"        1. eijiro      �p���Y
"       eblook> select 1
"       eblook> search apple
"        1. 5115:1324   apple
"        2. 5115:1858   Apple
"     �g�����̎Q�l: http://openlab.jp/edict/eblook/eblook.html#SEC2
"
"   eblook.vim�̃Z�b�g�A�b�v
"     �ȉ��̂悤�Ɏ����t�@�C����eblook.vim�ɓo�^
"let eblook_dictlist1 = [{'book': 'c:/Vim/eijiro/','name': 'eijiro','title': '�p���Y',}]
let eblook_dictlist1 = [{'book': 'c:/eblook/eijiro/','name': 'eijiro','title': '�p���Y',}]
"     �� �ȉ��͍ŏ����܂������Ȃ������Ƃ��ɁA�_�E�����[�h����EPWING�t�@�C�����g���Ď������ݒ�
"        �f�[�^�� http://openlab.ring.gr.jp/edict/fpw/#ascii ����_�E�����[�h
"let eblook_dictlist1 = [{'book': 'c:/Vim/ASCDATES/','name': 'ascdates','title': '�A�X�L�[�蒠',}]


" ##########################################################################
" CMA3000��rctext(��������)�̃����[�g�R�}���h�X�N���v�g�t�@�C��
" *.cmd �� init ���V�F���X�N���v�g�̌`���Ƃ��ĕ\������
" ##########################################################################
au BufRead,BufNewFile *.cmd set filetype=sh
au BufRead,BufNewFile *.ref set filetype=sh
au BufRead,BufNewFile *.init set filetype=sh


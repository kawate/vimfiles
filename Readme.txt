
==========================================
vimfiles�̃A�b�v�f�[�g�菇
==========================================

vimfiles��git��pull����

(NeoBundle�ŃG���[���o��ꍇ)
~\.vim\bundle\neobundle.vim ��git��pull����

vim�N�����ăG���[���o�Ȃ����Ƃ��m�F

==========================================
NeoBundle�œ��ꂽ�v���O�C���̃A�b�v�f�[�g
==========================================

vim�N������ :NeoBundleUpdate �����s����

==========================================
Vim�̃A�b�v�f�[�g�菇
==========================================

http://www.kaoriya.net/ ����Vim��zip�t�@�C�����_�E�����[�h���ĉ𓀂���B

������ C:\Vim �t�H���_��ʂ̖��O�ɂ��āA�_�E�����[�h�������̂ɒu��������B

�N������ :version �ŕύX����Ă��邱�Ƃ��m�F����B:help ���V�����Ȃ��Ă��邱�Ƃ��m�F����B

Vim�t�H���_ �� vimfiles�t�H���_�� �o�[�W�����A�b�v����.txt �̃V���[�g�J�b�g��u���Ă����B

==========================================
Vim�̃Z�b�g�A�b�v�菇
==========================================

--
Vim�̃C���X�g�[��

Vim7.4��http://www.kaoriya.net/����_�E�����[�h
�𓀂���C:\Vim�Ɉړ�

--
Git�̃C���X�g�[��

Git for Windows
http://msysgit.github.io/
�� �C���X�g�[�����̃I�v�V�����ŁA
   �uRun Git from the Windows Command Prompt�v��I������
   �igit�R�}���h��PATH�ɒǉ�����j

TortoiseGit
https://code.google.com/p/tortoisegit/

GitHub native app
https://help.github.com/articles/set-up-git

--
�ȉ��̃t�@�C����GitHub�̃��|�W�g���Ɉړ�
https://github.com/kawate/vimfiles
_vimrc  �� vimrc
_gvimrc �� gvimrc

GitHub��vimfiles�t�H���_�̃��[�J�����|�W�g����Vim���Q�Ƃ���ꏊ�ɍ쐬
  �����$HOME�̉��iC:\Users\kawate\vimfiles�j�ɍ쐬
    vimrc/gvimrc��T���ꏊ�Ə��Ԃ�:version�Ŋm�F�ł���
    $HOME�̎��ۂ̏ꏊ�́AVim���N������:echo $HOME�Ŋm�F�ł���

--
�ݒ�t�@�C���ꎮ�̎擾

�ݒ�t�@�C���� %userprofile% ���ɒu���B
�܂��A�o�b�N�A�b�v��viminfo��u���ꏊ���쐬����B
�R�}���h�v�����v�g�ňȉ��̂悤�Ɏ��s

>cd %userprofile%
>git clone https://github.com/kawate/vimfiles
>mkdir vimfiles\tmp
>mkdir vimfiles\tmp\backup
>mkdir vimfiles\tmp\swap

--
neobundle���C���X�g�[��
�R�}���h�v�����v�g�ňȉ��̂悤�Ɏ��s

mkdir %userprofile%\.vim\bundle
cd %userprofile%\.vim\bundle
git clone git://github.com/Shougo/neobundle.vim

--
*�Ǘ��Ҍ�����*�R�}���h�v�����v�g���J���A
assoc�R�}���h��ftype�R�}���h���g���Ĉȉ��̂悤�ɂ���B

>assoc .txt
.txt=txtfile

>ftype txtfile="C:\vim\gvim.exe" --remote-tab-silent "%1"
txtfile="C:\vim\gvim.exe" --remote-tab-silent "%1"

>ftype txtfile
txtfile="C:\vim\gvim.exe" --remote-tab-silent "%1"


--
�p���Y�̉p�P���<c-k>y�ň�����悤�ɂ���
  ���������c�[�� eblook.exe �ƁA�ϊ��ς݂̎����f�[�^ eijiro �t�H���_�� C:\eblook �ɍ쐬���A
  eblook.exe ���R�}���h�Ƃ��ċN���ł���悤�� PATH�ϐ��� C:\eblook ��ǉ�����B
  ���̑��ڍׂ�vimrc��eblook�̂Ƃ�����Q�ƁB

--
�J�X�^�}�C�Y���Ďg���Ă���plugin��syntax�t�@�C����
vimfiles�̈ȉ��̃t�H���_�Ɋi�[���Ďg��

  + plugin
    + dot.vim   DotOutlineTree: �A�E�g���C���v���Z�b�T�Ƃ��Ďg��
      �O�� C:\data\application\Vim\arc\Vim7.3\dot.vim �ɂ��������̂��R�s�[

  + syntax
    + wiki.vim  Wiki�p�V���^�b�N�X�t�@�C���̒ǉ�
    + ttl.vim   TeraTerm�}�N���p�V���^�b�N�X�t�@�C���̒ǉ� �� ���{

�����͐̂� C:\Vim\_runtime �ɒu���A_vimrc ��
set runtimepath+=C:\Vim\_runtime
�̍s��ǉ����Ďg���Ă���

--
�^�u�@�\1: �t�@�C�����_�u���E�N���b�N�������Ƃ��ɐV�K�^�u�ŕ\������ �� ����OK�m�F
�^�u�@�\2: �^�u�̐ؑւ����AMozilla Firefox ���ɂ��� �� ����OK�m�F
IME��Ԃɉ������J�[�\���F��ݒ� �� ����OK�m�F

--
���ϐ��̐ݒ� �� �����{
vim����Ruby�X�N���v�g�����s �� �����{
Ruby�̃��t�@�����X��\�� �� �����{




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
Vim�̏���Z�b�g�A�b�v�菇
==========================================

--
Vim�̃C���X�g�[��

http://www.kaoriya.net/����_�E�����[�h���A
�𓀂���C:\Vim�Ɉړ�����B
�����C���X�g�[���������킩��₷���悤�ɁA�o�[�W�����i�_�E�����[�h�����t�@�C���̃t�@�C�����j�̃�����Vim�t�H���_�ɒu���Ă����B

--
Git for Windows �̃C���X�g�[��
https://git-for-windows.github.io/
�� �C���X�g�[�����̃I�v�V�����ŁA
   �uRun Git from the Windows Command Prompt�v��I������
   �igit�R�}���h��PATH�ɒǉ�����j

--
TortoiseGit �̃C���X�g�[��
https://tortoisegit.org/

--
vimfiles �̎擾

cd %userprofile%
git clone https://github.com/kawate/vimfiles

�����vimfiles��Vim��$HOME�̉��ɍ쐬����B
$HOME�̎��ۂ̏ꏊ��Vim���N������:echo $HOME�Ŋm�F�ł���B
vimrc/gvimrc��T���ꏊ�Ə��Ԃ�:version�Ŋm�F�ł���B

--
�o�b�N�A�b�v�t�@�C���Aswap�t�@�C���Aviminfo�t�@�C�����쐬����ꏊ���쐬����
�����̏ꏊ�� vimrc �Ŏw�肵�Ă���

cd %userprofile%
mkdir vimfiles\tmp
mkdir vimfiles\tmp\backup
mkdir vimfiles\tmp\swap

--
neobundle���C���X�g�[��
�R�}���h�v�����v�g�ňȉ��̂悤�Ɏ��s

mkdir %userprofile%\.vim\bundle
cd %userprofile%\.vim\bundle
git clone git://github.com/Shougo/neobundle.vim

--
gvimrc�Ŏw�肵�Ă���uMigu 1M�v�t�H���g�̃C���X�g�[��

�ȉ�����uMigu 1M�v�t�H���g��zip�t�@�C�����_�E�����[�h���𓀂���B
http://mix-mplus-ipa.sourceforge.jp/migu/
�ȉ��t�@�C�������ꂼ��E�N���b�N���āu�C���X�g�[���v�����s����B
migu-1m-bold.ttf
migu-1m-regular.ttf

--
Vim���N������

NeoBundle�ɂ��vimrc�Ŏw�肵���v���O�C�����C���X�g�[�������B
Vim���N�����t�H���g�ݒ�ŁuMigu 1M�v���I������Ă��邱�Ƃ��m�F����B

--
vimfiles�t�H���_�̃V���[�g�J�b�g�� C:\Vim �ɒu���Ă���

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
�ȉ��̓�����m�F����
- �t�@�C�����_�u���E�N���b�N�������Ƃ��ɐV�K�^�u�ŕ\������
- �^�u�̐ؑւ����AMozilla Firefox ���ɂ���
- IME��Ԃɉ������J�[�\���F��ݒ� (IME ON�ŐԂ��Ȃ�.gvimrc�Ŏw��)



==========================================
NeoBundle��Git�ɂ��Ǘ��ւ̈ڍs�̓��e
==========================================

--
�ȉ��̃t�@�C����GitHub�̃��|�W�g���Ɉړ�
_vimrc  �� vimrc
_gvimrc �� gvimrc

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
���ϐ��̐ݒ� �� �����{
vim����Ruby�X�N���v�g�����s �� �����{
Ruby�̃��t�@�����X��\�� �� �����{



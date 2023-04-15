"===============================================================================
" Python3 DLL �̏ꏊ���w��
"===============================================================================
" Vim���R���p�C�������Ƃ��Ɏw�肳��Ă���o�[�W�����ƈقȂ�ꍇ�A
" ���ۂɃC���X�g�[������Ă���Python3 DLL�̏ꏊ�̎w�肪�K�v
" https://arimasou16.com/blog/2018/10/19/00266/

" 2023-02-23 ���PC�̃C���X�g�[���ꏊ�͈ȉ�
"set pythonthreedll=C:\Users\a1195046\AppData\Local\Programs\Python\Python310-32\python310.dll

" 2023-02-23 �Ƃ�PC�̃C���X�g�[���ꏊ�͈ȉ�
set pythonthreedll=C:\Users\hkawa\AppData\Local\Programs\Python\Python39-32\python39.dll


"===============================================================================
" NeoBundle�ɂ��Vim�̃v���O�C���Ǘ�
"===============================================================================
" �v���O�C�����C���X�g�[��:
"   vimrc �� NeoBundle �Ŏw�肵�āAvim�ォ�� :NeoBundleInstall
" �A�b�v�f�[�g:
"   vim�ォ�� :NeoBundleUpdate
" �v���O�C�����폜:
"   vimrc ����폜�������v���O�C���� NeoBundle �̋L�q�������āAvim�ォ�� :NeoBundleClean �����s�B
"   �� 2023-02-23
"      NeoBundleClean �͊댯�ȃR�}���h�Ȃ̂Ŕp�~���ꂽ�Ƃ̂��ƁB
"      NeoBundle �̃��X�g�Ŏw�����߂�΍폜�Ɠ������ƂɂȂ�Ƃ̂��Ɓi���̃v���O�C���̓��[�h����Ȃ��Ȃ�̂Łj
"      �ڍ�: https://github.com/Shougo/neobundle.vim/issues/501
" ##########################################################################
" 2014-01-13 neobundle�̐ݒ�
" http://d.hatena.ne.jp/xyk/20130930/1380507307
" http://www.slideshare.net/Shougo/neobundlevim
" http://wp.graphact.com/2012/11/09/hello-neobundle-vim
" ##########################################################################

" vim�N�����̂�runtimepath��neobundle.vim��ǉ�����neobundle.vim���Ăяo����悤�ɂ���
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" NeoBundle��������
call neobundle#begin(expand('~/.vim/bundle/'))
" ----- �C���X�g�[������v���O�C���̋L�q ���������� -----
" �����Ɏg�p�������v���O�C���̃��|�W�g���A�h���X���L�q����
" github, vim.org �ɑ��݂���v���O�C���̃A�h���X�͏ȗ��ł���
"   ��: 'Shougo/unite.vim' �� 'git://github.com/Shougo/unite.vim.git' �Ɠ���
"       'CSApprox' �̂悤�Ƀv���O�C�����݂̂���Vim.org�̃v���O�C����\��

" NeoBundle���̂�neobundle�ŊǗ�����ꍇ��NeoBundleFetch���g��
NeoBundleFetch 'Shougo/neobundle.vim'

" -----
" 2023-04-15 
" https://www.vim.org/scripts/script.php?script_id=2944
" �r�W���A�����[�h (v) �Ŕ͈͑I��������Ԃ�
" Shift+*����͂���Ɣ͈͂���Ă���ӏ��ɑ΂��Č�������
NeoBundle 'thinca/vim-visualstar'
" �� VS Code ���� Shift+* �����������œK���Ȕ͈͂̓��{�ꂪ��������Ȃ�����
"    �ݒ�ł����L���ɂ���(vim.visualstar)
"    ����Ɠ��������ɂ��邽�߂ɃC���X�g�[������

" -----
" 2016-11-26 �����E�B���h�E�ŊJ��
" �ȍ~�́usingleton#enable�v�ŗL���ɂ��Ă���
NeoBundle 'thinca/vim-singleton'

" -----
NeoBundle 'Shougo/unite.vim'

" -----
" unite-outline: �\�[�X�t�@�C������͂��A�A�E�g���C����\������ (2015-03-08)
" :Unite outline�ŋN������
" �� unite-outline�Ɠ��l�̂��Ƃ��ʂɃC���X�g�[������Voom�ł��\
"NeoBundle 'h1mesuke/unite-outline'
"���ŏ�����w�肵�Ă���G���[�ɂȂ����̂Ł��ɕύX����:NeoBundleClean��:NeoBundleUpdate�����瓮���悤�ɂȂ���
NeoBundle 'https://github.com/Shougo/unite-outline'
" �� C++�̃R�[�h������Ƃ��� exuberant ctags ���K�v�Ȃ̂ňȉ��ɃC���X�g�[��(2015-03-08)
"    C:\data\shortcuts\ctags.exe

" �u:,u�v�Ɠ��͂����Ƃ���unite-outline�̈ȉ��̃R�}���h�����s����
"  :Unite -no-quit -vertical outline
"    -no-quit: �A�E�g���C���̃o�b�t�@����Ȃ��悤�ɂ���
"    -vertical: ���������ŊJ��
"http://hinagishi.hateblo.jp/entry/2011/11/18/135701
noremap ,u <ESC>:Unite -no-quit -vertical outline<Return>

" -----
" autocomplpop.vim: �L�[���[�h�⊮���X�g�������ŏo��
NeoBundle 'https://github.com/vim-scripts/AutoComplPop'
"  �̂̂���
"    http://blog.blueblack.net/item_164 �̃����N����A
"    http://www.vim.org/scripts/script.php?script_id=1879 �̍ŐV�ł��_�E�����[�h���A
"    vim-autocomplpop.zip
"    �W�J�����t�@�C���Q�� _runtime �t�H���_�Ɉړ�

" -----
"eblook.vim: eblook�v���O�������g���Ď���������
NeoBundle 'https://github.com/deton/eblook.vim'
"  �̂̂���:
"     �ȉ�URL����_�E�����[�h�ieblook-vim-1.2.0.tar.bz2.tar.bz2�j
"     http://www1.interq.or.jp/~deton/eblook-vim/
"     �𓀂����t�@�C����README.markdown���Q�l�Ɉړ�
"     �������AVim�̃o�[�W�����A�b�v�Ŗʓ|�ɂȂ�Ȃ��悤�� runtime �ł͂Ȃ� _runtime �t�H���_�Ɉړ�

" -----
"Alin.vim: �R�[�h�̐��`�c�[��
NeoBundle 'https://github.com/vim-scripts/Align'
" �ȉ��̂悤�ȃR�[�h��I���� \tsp ����͂����
" one two three four five
" six seven eight nine ten
" eleven twelve thirteen fourteen fifteen
" �ȉ��̂悤�ɐ��`���Ă����
" one    two    three    four     five
" six    seven  eight    nine     ten
" eleven twelve thirteen fourteen fifteen
" �ڂ����g������
" http://nanasi.jp/vim/align.html
" �Ȃǂ��Q��

" -----
"VOoM (Vim Outliner of Markups) is a plugin for Vim that emulates a two-pane text outliner.
"NeoBundle 'https://github.com/vim-scripts/VOoM'
" �ȉ��̏Љ�L�������ăC���X�g�[��
" http://syotaro.ruhoh.com/posts/20121216-tips-vim-outliner/
"
"2023-02-23
"NeoBundle�Ŏ擾�ł����L�ꏊ�ɂ���̂̓o�[�W������5.1�ƌÂ�Python3�ɑΉ����Ă��Ȃ�����
"�R�����g�A�E�g���Ďg�p���Ȃ��悤�ɂ���
"�ȉ��ɂ���ŐV��v5.3���蓮�ŃC���X�g�[������
"https://www.vim.org/scripts/script.php?script_id=2657

" **INSTALLATION**
" To install the VOoM plugin manually:
" 1) Move the contents of folders "autoload", "doc", "plugin" into the
"    respective folders in your local Vim directory:
"         $HOME/vimfiles/       (Windows)
"    This should make commands :Voom, :Voomhelp, :Voomexec, :Voomlog available in all buffers. 
"    (Do ":echo $HOME" to find out what Vim sees as $HOME.)
" 2) Execute the :helptags command to update help tags:
"         :helptags $HOME/vimfiles/doc       (Windows)
"
"2023-02-24
"vim.org �̐������� GitHub mirror �͈ȉ��Ƃ������Ƃł����ɂ͍ŐV�o�[�W�������������B
"���̂��߂������NeoBundle�Ŏw�肵�Ă݂����A���ꂾ��vim���N�����Ȃ��Ȃ����̂Ŏ���߂��B
"https://github.com/vim-voom/VOoM


" -----
"Indent Guides - �C���f���g�����v���O�C�� (2015-01-04)
NeoBundle 'nathanaelkane/vim-indent-guides'
" �ȉ��̏Љ�L�������ăC���X�g�[��
" http://qiita.com/tekkoc/items/923d7a7cf124e63adab5
" http://www.absolute-keitarou.net/blog/?p=1127
" http://www.mk-mode.com/octopress/2014/02/10/vim-installation-of-indent-plugin/
" Vim �N���� vim-indent-guides �������N��
let g:indent_guides_enable_on_vim_startup=1
" �K�C�h���X�^�[�g����C���f���g�̗�
let g:indent_guides_start_level=2
" �����J���[����
let g:indent_guides_auto_colors=0
" ��Ԗڂ̃C���f���g�̐F
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black
" �����Ԗڂ̃C���f���g�̐F
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
" �K�C�h�̕�
let g:indent_guides_guide_size = 1


" -----
"jedi.vim - Python��vim�ŏ����Ƃ��ɃR�[�h�⊮���s���Ă���� (2015-01-04)
"http://qiita.com/tekkoc/items/923d7a7cf124e63adab5
"http://togattti.hateblo.jp/entry/2013/10/16/214911
NeoBundle 'davidhalter/jedi-vim'

" -----
"Molokai color scheme for Vim
"���J���[�X�L�[���̐ݒ�� gvimrc �ɋL�ڂ���
NeoBundle 'https://github.com/tomasr/molokai'

" -----
" zoom.vim : �u+�v�A�u-�v�L�[�ŕ����̑傫����ύX�ł��� (2015-11-23)
"NeoBundle 'https://github.com/taku-o/downloads/raw/master/zoom.vim' <= ���ꂾ�Ƃ��܂��C���X�g�[�����ꂸ
NeoBundle 'vim-scripts/zoom.vim'


" -----
" grep.vim 2017-02-04 �� ���܂������Ȃ��i�G���[�Ō��ʂ��łȂ��j�̂Ŏg���̎~�߂�(2017-02-05)
" - :Rgrep �ŊȒP�ȑ���ōċA�I�� grep ���ł���
" http://myenigma.hatenablog.com/entry/2016/01/17/184925#�����K��grep���邽�߂�vimrc�ݒ�
"NeoBundle 'vim-scripts/grep.vim'
" grep.vim �� grep �̂ق��A find �� xargs ���g���݂����Ȃ̂ŁAC:\data\shortcuts �ɒu�����B
"let Grep_Path = 'C:\data\shortcuts\grep.exe' 
"let Grep_Xargs_Path = 'C:\data\shortcuts\xargs.exe' 
"let Grep_Find_Path = 'C:\data\shortcuts\find.exe'
"let Grep_Shell_Quote_Char = '"'

" ----- �C���X�g�[������v���O�C���̋L�q �����܂� -----
call neobundle#end()


" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" ���C���X�g�[���̃v���O�C��������ꍇ�A�C���X�g�[�����邩�ǂ�����q�˂Ă����悤�ɂ���ݒ�
" ���񕷂����Ǝז��ȏꍇ������̂ŁA���̐ݒ�͔C�ӂł��B
NeoBundleCheck


" ##########################################################################


" �ǉ��� runtime ��u���ꏊ(2010-11-26)
" -> NeoBundle�Ɉڍs���Ă��邽�߃R�����g�A�E�g(2016-05-02)
" set runtimepath+=C:\Vim\_runtime


" ##########################################################################
" �����E�B���h�E�ŊJ���悤�ɂ���
" ##########################################################################
"" 2016-11-12
"" �ȉ���ǉ����Ă����ƁA�t�@�C���̊֘A�t������Ƃ��ɁA
"" ftype�R�}���h�ňȉ��̂悤�Ɂu--remote-tab-silent�v���w�肵�Ȃ��Ă�OK�ɂȂ�B
"" "C:\vim\gvim.exe" --remote-tab-silent "%1"
"" ���̂��߁Aftype �R�}���h�ŏ�L�̂悤�Ȏw�肪������̂͂��ׂč폜�����B
"" ����́AWindows��GUI�̐ݒ��gvim���w�肷��悤�ɂ���B
"" ��L������΁A�t�@�C�����w�肵��gvim���J���ƕK���^�u�ŊJ�����悤�ɂȂ�B
"" �ʃE�B���h�E�ɂ������ꍇ��gvim�Ɉ�����t���Ȃ��ŋN������Ηǂ��B
""
"" �֘A���: �E�N���b�N�̃��j���[�ɁuVim�ŊJ���v��ǉ�������@
"" �ȉ��̃��W�X�g���ɐݒ肷��B
"" HKEY_CLASSES_ROOT �� * �� shell �� Vim�ŊJ��
""                                    Vim�ŊJ��(--remote-tab-silent)
""
"" ���u--remote-tab-silent�v���ƃp�X�Ɂu#�v���܂ރt�@�C�����G���[�ŊJ���Ȃ����Ƃ�����(2016-11-12)
""
"" �{�ݒ�̐���:
""   http://tyru.hatenablog.com/entry/20130430/vim_resident
""�u--remote-tab-silent�v�ɂ��Ă̐����F
""   http://mattn.kaoriya.net/software/vim/20071004163036.htm
""===============================================================================
"" If starting gvim && arguments were given
"" (assuming double-click on file explorer)
"if has('gui_running') && argc()
"    let s:running_vim_list = filter(
"    \   split(serverlist(), '\n'),
"    \   'v:val !=? v:servername')
"    " If one or more Vim instances are running
"    if !empty(s:running_vim_list)
"        " Open given files in running Vim and exit.
"        silent execute '!start gvim'
"        \   '--servername' s:running_vim_list[0]
"        \   '--remote-tab-silent' join(argv(), ' ')
"        qa!
"    endif
"    unlet s:running_vim_list
"  endif

" 2016-11-26
" ��L�͎~�߂� vim-singleton �v���O�C�����g���悤�ɂ��� (�t�@�C�����ɃX�y�[�X���܂܂�Ă���ƁA�X�y�[�X�ŕ������ꂽ�����̃t�@�C���Ƃ��Ĉ����Ă��܂�����)
" http://tyru.hatenablog.com/entry/20130430/vim_resident
" .vimrc ���̏�̕��ɏ������������� (�t�@�C�����J�����ۂɁA���łɋN���ς݂� Vim ���������ꍇ�͂�����ŊJ���đ����ɏI�����邽��) �������A�ݒ�͂��̑O�ɋL�q���� (g:singleton#ignore_pattern �ɏ��O����t�@�C���̃p�^�[���������Ă����΁A�����̃t�@�C���������ꍇ�͕��ʂɊJ�����A�Ȃ�)
call singleton#enable()


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
" �V���[�g�J�b�g�L�[�̊��蓖��
" Vim�̃f�t�H���g�̃V���[�g�J�b�g�L�[���蓖�Ă𒲂ׂ�ɂ́A�ȉ��̃R�}���h���g���B
"   :help index.txt
" vimrc��v���O�C���Ŋ��蓖�Ă�ꂽ�V���[�g�J�b�g�L�[�𒲂ׂ�ɂ́A�ȉ��̃R�}���h���g���B
"   :map
"   :nmap           " �m�[�}�����[�h�����\��
"   :imap           " �C���T�[�g���[�h�����\��
"   :vmap           " �r�W���A�����[�h�����\��
"   :verbose nmap   " ���̃V���[�g�J�b�g�L�[�̒�`���t�@�C�������\��
"   http://blog.ruedap.com/2011/01/11/vim-keyboard-shortcut-key
" ##########################################################################

" 2022-12-10
" zoom.vim�Ŏ������Ă���*/-�L�[�ł� Zoom In/Out ���A
" ���̃A�v���P�[�V�����Ɠ����悤�� Ctrl �t���������悤�ɂ��悤�Ǝv����
" �ȉ��̂悤�ɂ����������Ȃ������B���ʂ̕�������OK���� +/- ���Ƃ��܂������Ȃ��B�B
"noremap <C-+> +
"noremap <C--> -

" Ctrl-D���������Ƃ��ɓ��t�����
"inoremap <C-D> <C-R>=strftime("%Y/%m/%d")<CR>
inoremap <C-D> <C-R>=strftime("%Y-%m-%d")<CR>

" 2014-05-22
" Ctrl-T���������Ƃ��Ɏ��������
" �� Ctrl-T�̓^�O�W�����v�́u���O�̃^�O�ɖ߂�v�Ɋ��蓖�Ă��Ă���݂����Ȃ̂Œ��ӂ��K�v
inoremap <C-T> <C-R>=strftime("%H:%M")<CR>
" �b�܂œ��͂������Ȃ� %H:%M:%S

" ---------------------------------------------------------------------------------
" Windows�ň�ʓI�Ȑ؂蔲��(CTRL-X)�A�R�s�[(CTRL-C)�A�\��t��(CTRL-V)��vim �ł��g��
" CTRL-C �ɂ��Ƃ��Ɗ��蓖�Ă��Ă����A�R�}���h�̃L�����Z�����s���������ɂ́A 
" CTRL-Break(�����̊��ł� CTRL+Pause)�������Ɏg���Ă��������B
" �����悤�ɁA��`�I�����������ɂ́ACTRL-V �̂�����CTRL-Q���g���Ă��������B
" source $VIMRUNTIME/mswin.vim
" source C:\Vim\_runtime/mswin.vim " �I���W�i�����R�s�[���ăJ�X�^�}�C�Y
" source $VIMRUNTIME/mswin.vim " 2014-01-13 �m�F�����Ƃ���W���ƕς��Ȃ��̂Ō��ɖ߂�
" 2017-07-01
"   �ŐV��mswin.vim(C:\Vim\vim80\mswin.vim)��CTRL-F�������Ɋ��蓖�Ă�ꂽ���A
"   ���܂łǂ���y�[�W�X�N���[���Ŏg�p���������߁A�C������plugin�t�H���_�Ɉړ����Ă�����g�p���邱�Ƃɂ����B
" 2022-12-10 mswin.vim �̓��e�� vimrc �Ɉړ�����
"   - �ŐV��mswin.vim���擾 https://github.com/vim/vim/blob/master/runtime/mswin.vim
"   - ����� C:\Users\hkawa\vimfiles\plugin �� mswin.vim �Ɣ�r���čX�V����Ă���Ƃ�����}�[�W
"   - ���̓��e���ȉ��ɓ\��t���� mswin.vim ���폜
"
" Set options and add mapping such that Vim behaves a lot like MS-Windows
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2018 Dec 07

" Bail out if this isn't wanted.
if exists("g:skip_loading_mswin") && g:skip_loading_mswin
  finish
endif

" set the 'cpoptions' to its Vim default
if 1	" only do this when compiled with expression evaluation
  let s:save_cpo = &cpoptions
endif
set cpo&vim

" set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
behave mswin

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" backspace in Visual mode deletes selection
vnoremap <BS> d

if has("clipboard")
    " CTRL-X and SHIFT-Del are Cut
    vnoremap <C-X> "+x
    vnoremap <S-Del> "+x

    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y
    vnoremap <C-Insert> "+y

    " CTRL-V and SHIFT-Insert are Paste
    map <C-V>		"+gP
    map <S-Insert>		"+gP

    cmap <C-V>		<C-R>+
    cmap <S-Insert>		<C-R>+
endif

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.
" Use CTRL-G u to have CTRL-Z only undo the paste.

if 1
    exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
    exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']
endif

imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>		<C-V>

" Use CTRL-S for saving, also in Insert mode (<C-O> doesn't work well when
" using completions).
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<Esc>:update<CR>gi

" For CTRL-V to work autoselect must be off.
" On Unix we have two selections, autoselect can be used.
if !has("unix")
  set guioptions-=a
endif

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" Alt-Space is System menu
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" 2017-07-16 kawate CTRL-Tab �̓o�b�t�@�̐؂�ւ��ł͂Ȃ��A
"                   �^�u�̐؂�ւ��Ɏg���������߃R�����g�A�E�g����
"                   (vimrc �̒�`�Ɣ���Ă���)
"" CTRL-Tab is Next window
"noremap <C-Tab> <C-W>w
"inoremap <C-Tab> <C-O><C-W>w
"cnoremap <C-Tab> <C-C><C-W>w
"onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

" 2017-05-22 kawate �ȉ��͒ǉ����ꂽ���K�v�Ȃ��̂ŃR�����g�A�E�g����
"                   �iCTRL-F�̓y�[�W�X�N���[���Ŏg�p�������j
"if has("gui")
"  " CTRL-F is the search dialog
"  noremap  <expr> <C-F> has("gui_running") ? ":promptfind\<CR>" : "/"
"  inoremap <expr> <C-F> has("gui_running") ? "\<C-\>\<C-O>:promptfind\<CR>" : "\<C-\>\<C-O>/"
"  cnoremap <expr> <C-F> has("gui_running") ? "\<C-\>\<C-C>:promptfind\<CR>" : "\<C-\>\<C-O>/"
"
"  " CTRL-H is the replace dialog,
"  " but in console, it might be backspace, so don't map it there
"  nnoremap <expr> <C-H> has("gui_running") ? ":promptrepl\<CR>" : "\<C-H>"
"  inoremap <expr> <C-H> has("gui_running") ? "\<C-\>\<C-O>:promptrepl\<CR>" : "\<C-H>"
"  cnoremap <expr> <C-H> has("gui_running") ? "\<C-\>\<C-C>:promptrepl\<CR>" : "\<C-H>"
"endif

" restore 'cpoptions'
set cpo&
if 1
  let &cpoptions = s:save_cpo
  unlet s:save_cpo
endif

" ---------------------------------------------------------------------------------


" 2008-02-16 �^�u�̐ؑւ����AMozilla Firefox ���ɂ���B
" http://rewse.jp/fukugan/article.php?id=762
" 2011-02-12 ���܂�g��Ȃ�<C-S-Tab><C-t><C-w>���R�����g�A�E�g �� 2017-07-16 �ēx�L���ɂ���
" 2017-07-16 mswin.vim �ƒ�`������Ă���(mswin�̒u���ꏊ��ς������ƂŁH)�ȉ��������Ȃ��Ȃ������߁Amswin�����R�����g�A�E�g�����B
nnoremap <C-Tab> :tabnext<Return>
nnoremap <C-S-Tab> :tabprevious<Return>
nnoremap <C-t> :tabedit<Return>
nnoremap <C-w> :tabclose<Return>

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

" 2015-07-06 Vim74�̃o�[�W�����A�b�v�ɔ���undofile ���쐬����ꏊ��ݒ�
" http://www.kaoriya.net/blog/2014/03/30/
" Vim �� 7.4.227 ����A�f�t�H���g�� undofile ���I���̏�ԂŔz�z�����悤�ɂ�
" ��܂����B���̂��߃f�t�H���g�ł̓t�@�C����ۑ��������ɓ����� .{�t�@�C��
" ��}.un~ �� undo �t�@�C�����쐬���܂��B
" ���� undo �t�@�C���ɂ�� Vim �� undo �̏����Z�b�V�������z���ĕێ��ł��܂��B
set undodir=~/vimfiles/tmp/undo

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

"set tabstop=2 2005-11-05
"set tabstop=4 2008-05-09
"set tabstop=8
"set softtabstop=4
set tabstop=2
set softtabstop=2

" 2. shiftwidth: �C���f���g�E�R�}���h�ő}�������X�y�[�X�̐��B
" �C���f���g�E�R�}���h�Ƃ� >> �̂悤�ȃR�}���h�Q�ł��B
"       <{motion}           >{motion}
"       <<                  >>
"       {Visual}[count]<    {Visual}[count]>
"       :[range]<           :[range]>
"       :[range]< {count}   :[range]> {count}
" �܂��A����ȊO�� cindent �ɂ�����C���f���g�ł� shiftwidth�̒l���g���܂��B
" set shiftwidth=2 2005-11-05
set shiftwidth=2

" 3. smarttab: TAB �̓������������
" smarttab �I�v�V�������Z�b�g����Ă���ƁA
" �E�s���� TAB �L�[���������ꍇ�ɂ́Ashiftwidth �̕��̃X�y�[�X�� TAB ���}������܂��B
" �E����ȊO�̏ꏊ�ł͖{���� TAB ���}������܂��Asofttabstop ���ݒ肳��Ă���Ƃ��̒l�ł��B
"set nosmarttab 2015-01-04
set smarttab

" 4. expandtab: �{���� TAB �͑}�������Atabstop �̒l�̐��̃X�y�[�X��}������B
" softtabstop ���ݒ肳��Ă���Ƃ��̐������Bsofttabstop ���ݒ肳��Ă��Ȃ��ƁA
" �o�b�N�X�y�[�X�E�L�[�ł́A�X�y�[�X��1���폜����邱�ƂɂȂ�܂��B
" set noexpandtab
set expandtab "2009-01-06

" expandtab�̎��ɁA�^�u������}���������ꍇ�́A
" http://nanasi.jp/articles/howto/editing/et-inserttab.html

" �C���f���g�̐ݒ���t�@�C���^�C�v�ʂɍs�� (2015-01-04)
" http://d.hatena.ne.jp/foussin/20121125/1353790707
"   (shiftwidth=�X�}�[�g�C���f���g�̕�)
"   (tabstop=�^�u�̉�ʏ�ł̕�)
"   (softtabstop=??? �f�t�H���g�� tabstop �Ɠ����炵��)
augroup vimrc
" Vim�Ō��݂̃o�b�t�@�i�J���Ă���t�@�C���j��filetype���擾����ɂ́A
" :echo &filetype
  autocmd! FileType cs         setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd! FileType c          setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd! FileType cpp        setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd! FileType python     setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END


" ##########################################################################
" FileType�̐ݒ�
" ##########################################################################
" FlexDCA�̃}�X�N�t�@�C��(*.mskx) 2017-03-16
autocmd BufRead,BufNewFile *.mskx set filetype=xml

" ##########################################################################
" �������s
" ##########################################################################
" �f�t�H���g��78�����ڂŉ��s����Ă��܂��̂��������s���Ȃ��悤�ɂ���
" vimrc_example��textwidth�ݒ���㏑��
" http://d.hatena.ne.jp/WK6/20120606/1338993826
autocmd FileType text setlocal textwidth=0

" ##########################################################################
" grep
" ##########################################################################

" 2010-01-08
" Vim7 ������ grep ���g���ɂ� :vimgrep �R�}���h���g���΂悢�B
" :vimgrep /hogehoge/ *.txt
" �ŏ��Ƀ}�b�`�����t�@�C�����J���Ȃ��悤�ɂ���ɂ� j �t���O���g���B
" :vimgrep /hogehoge/j *.txt
" �ċA�I�Ɍ�������ɂ� **(starstar) ���g���B
" :vimgrep /hogehoge/j **/*.txt
" �ЂƂ�̊K�w����ċA�I�Ɍ�������Ƃ���../��ǉ�
" :vimgrep /hogehoge/j ../**/*.lua
" �������ʂ� Quickfix���X�g�ɕ\�������B:copen �ŊJ�� :ccl �ŕ��邱�Ƃ��ł���B�ڍׂ� :he quickfix-window�B

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

" 2017-02-04 jvgrep ���f�t�H���g�� grep �v���O�����Ƃ��Ďg�p����
" http://myenigma.hatenablog.com/entry/2016/01/17/184925#�����K��grep���邽�߂�vimrc�ݒ�
if executable('jvgrep')
  set grepprg=jvgrep
endif


" ##########################################################################
" �N���b�v�{�[�h�ւ̃R�s�[�y�[�X�g
" ##########################################################################
" 2011-12-17
" �폜���e���N���b�v�{�[�h�ɓ����Ă��܂��A�N���b�v�{�[�h�̓��e���u���ς���Ă��܂��̂Ŏ~�߂��B
" 2011-11-01
" �ȉ��̐ݒ�ŁA�ʏ�A�u�������W�X�^�v�ɓ���A �����N�A�J�b�g�̑���Ŏw�肵��
" �e�L�X�g���A�u*���W�X�^�v�ɂ�����悤�ɂȂ�܂��B�u*���W�X�^�v�Ƀf�[�^�����
" ��ƁA�N���b�v�{�[�h�Ƀf�[�^������̂ŁAvim�G�f�B�^�Ń����N�A�J�b�g�����e�L
" �X�g���A���̃A�v���P�[�V�����ő��y�[�X�g���Ďg�p�ł��邱�ƂɂȂ�܂��B
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


"===============================================================================
" �J�����g�f�B���N�g���������I�ɕύX���� (2015-11-21)
"===============================================================================
"���ꂪ�I���ł���ƃt�@�C�����J���Ƃ��A�o�b�t�@��؂�ւ���Ƃ��A�o�b�t�@����
"������Ƃ��A�E�B���h�E���J����Ƃ��ɖ����ƃf�B���N�g�����ύX�����B�J��
"�ꂽ�^�I�����ꂽ�t�@�C�����܂�ł���f�B���N�g�����J�����g�f�B���N�g���ɂȂ�B
set autochdir


"===============================================================================
" Visual Studio��VsVim�g���@�\�Ƃ̘A�g�̂��߂ɁAC:\Vim �� vimrc �ɂ�����e���ړ� (2021-01-03)
"===============================================================================
" Visual Studio�ɃC���X�g�[������VsVim�Łu:set�v�����s���ď�Ԃ��m�F�����
" C:\Users\hkawa\vimfiles �ɂ��� vimrc �̐ݒ肪�ǂݍ��܂�Ă��邪�A
" C:\Vim �� vimrc �͓ǂݍ��܂�Ȃ��B
" ���̂��߁A���ʂŎg�p�������ݒ�� vimfiles �� vimrc �ɏW�񂵂Ă���
"---------------------------------------------------------------------------
" �����̋����Ɋւ���ݒ�:
"
" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase
" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
set smartcase



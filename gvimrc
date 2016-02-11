"===============================================================================
" �\���p�t�H���g
"===============================================================================
" 2014-11-15 �t�H���g��Migu 1M���g���B
"            �� Migu 1M �t�H���g�̓C���X�g�[�����K�v�B
"http://qiita.com/knt45/items/ee135182e62d14800e59#1-2
"set guifont=Migu_1M:h12
set guifont=Migu_1M:h11
" --
"2014-11-15 ��L�ɂ��ȉ��̓R�����g�A�E�g
"" �t�H���g�ݒ�
"if has('win32')
"" Windows�p
"  set guifont=MS_Gothic:h10:cSHIFTJIS
"" set guifont=MS_Mincho:h12:cSHIFTJIS
"" �s�Ԋu�̐ݒ�
"" set linespace=1
"endif


"===============================================================================
" ����p�t�H���g
"===============================================================================
" 2010-11-27 kawate - gvimrc ���㏑�� -
if has('printer')
  if has('win32')
    "set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
    set printfont=MS_Gothic:h10:cSHIFTJIS
  endif
endif


"===============================================================================
" �E�C���h�E�̕�, �E�C���h�E�̍���
"===============================================================================
" 2004/05/16
set columns=120
set lines=55


"===============================================================================
" �J���[�X�L�[���̐ݒ�
"===============================================================================

"2014-11-15 colorscheme��molokai�ɐݒ�
"�� �ȉ��̍s(NeoBundle)��vimrc�ɏ����Ȃ��Ƃ����Ȃ��B
"   �������Ȃ��ƕʂ̃t�@�C�����J�����Ƃ��ȂǂɃG���[�ɂȂ� (2015-11-21)
"NeoBundle 'https://github.com/tomasr/molokai'
"�� �ȉ��̍s��gvimrc�ɏ����Ȃ��Ƃ����Ȃ��B
"   �������Ȃ��ƃJ���[�X�L�[�������f����Ȃ� (2015-11-21)
colorscheme molokai

"2014-11-15 ��L�ɂ��ȉ��̓R�����g�A�E�g
"" (GUI�g�p��)��ʂ����n�ɔ��ɂ���
"colorscheme evening


"===============================================================================
" IME��Ԃɉ������J�[�\���F�̐ݒ�
"===============================================================================
" 2009-07-24
" http://blog.blueblack.net/item_393
if has('multi_byte_ime')
" highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
" highlight CursorIM guifg=NONE guibg=#ecbcbc
  highlight CursorIM guifg=NONE guibg=#ff0000
endif


"===============================================================================
" �V���^�b�N�X�n�C���C�g�̐ݒ� (NSIS)
"===============================================================================
" 2011-12-01
" *.nsh �t�@�C����NSIS�ŃV���^�b�N�X�n�C���C�g(*.nsi�͂��̎w�肪�Ȃ��Ă��n�C���C�g�����)
" �Q�l: http://q.hatena.ne.jp/1208414020
autocmd BufNewFile,BufRead *.nsh set filetype=nsis

"===============================================================================
" �V���^�b�N�X�n�C���C�g�̐ݒ� (CMA3000�֘A)
"===============================================================================
" CMA3000��rctext(��������)�̃����[�g�R�}���h�X�N���v�g�t�@�C��
" *.cmd �� init ���V�F���X�N���v�g�̌`���Ƃ��ĕ\������
au BufRead,BufNewFile *.cmd set filetype=sh
au BufRead,BufNewFile *.ref set filetype=sh
au BufRead,BufNewFile *.init set filetype=sh

"===============================================================================
" �V���^�b�N�X�n�C���C�g�̐ݒ� (Markdown)
"===============================================================================
" *.md (Markdown) �t�@�C�� �� Syntax �n�C���C�g
" 2014-11-11
" �Q�l: http://rcmdnk.github.io/blog/2013/11/17/computer-vim/
" *.md���̃t�@�C����Markdown�ł͂Ȃ� modula2 �̂��̂Ɣ��f����Ă��܂��̂ŁA�����ύX����
"autocmd MyAutoGroup BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
au BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
" *����italic�\���ɂȂ�܂����A ���ꂪ�����Ȃ��Ɖi����italic�������Ă��܂��̂ŁA
" italic�ȃn�C���C�g���~�߂Ă����������͈ȉ���L���ɂ���B
"autocmd MyAutoGroup FileType markdown hi! def link markdownItalic LineNr



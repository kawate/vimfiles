
" �t�H���g�ݒ�
if has('win32')
" Windows�p
  set guifont=MS_Gothic:h10:cSHIFTJIS
" set guifont=MS_Mincho:h12:cSHIFTJIS
" �s�Ԋu�̐ݒ�
" set linespace=1
endif

" 2010-11-27 kawate - gvimrc ���㏑�� -
" ����p�t�H���g
if has('printer')
  if has('win32')
    "set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
    set printfont=MS_Gothic:h10:cSHIFTJIS
  endif
endif

" 2004/05/16 �E�C���h�E�̕�, �E�C���h�E�̍���
set columns=120
set lines=55

" (GUI�g�p��)��ʂ����n�ɔ��ɂ���
colorscheme evening

" 2009-07-24 IME��Ԃɉ������J�[�\���F��ݒ�
" http://blog.blueblack.net/item_393
if has('multi_byte_ime')
" highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
" highlight CursorIM guifg=NONE guibg=#ecbcbc
  highlight CursorIM guifg=NONE guibg=#ff0000
endif


" 2011-12-01
" *.nsh �t�@�C����NSIS�ŃV���^�b�N�X�n�C���C�g(*.nsi�͂��̎w�肪�Ȃ��Ă��n�C���C�g�����)
" �Q�l: http://q.hatena.ne.jp/1208414020
autocmd BufNewFile,BufRead *.nsh set filetype=nsis


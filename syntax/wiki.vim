" vim:ts=8 sts=2 sw=2 tw=0 nowrap:
"
" wiki.vim - wiki (YukiWiki)用シンタックス
"
" Language:	wiki
" Maintainer:	KAWATE
" Last Change:	2006-02-25

scriptencoding cp932

syntax match wikiTbd /TBD/
syntax match wikiTodo /TODO/
syntax region wikiName start=/\[\[/ end=/\]\]/
syntax match wikiUrl display "\(http\|ftp\):[-!#%&+,./0-9:;=?@A-Za-z_~]\+"
syntax region wikiBold start=/''/ end=/''/
syntax region wikiItalic start=/'''/ end=/'''/

syntax cluster wikiWord contains=wikiTbd,wikiToDo,wikiName,wikiUrl,wikiBold,wikiItalic

syntax match wikiNormal // contains=@wikiWord

syntax match wikiMidashiDai "^\* .*" contains=@wikiWord
syntax match wikiMidashiChu "^\*\* .*" contains=@wikiWord
syntax match wikiMidashiSho "^\*\*\* .*" contains=@wikiWord

syntax match wikiListOne /^- .*/ contains=@wikiWord
syntax match wikiListTwo "^-- .*" contains=@wikiWord
syntax match wikiListThree "^--- .*" contains=@wikiWord

syntax match wikiYougo "^:.*" contains=@wikiWord

syntax match wikiLine "^----.*" contains=@wikiWord

"syntax match wikiVerbatim /^ .*/ contains=@wikiWord  <= BERTWave Wiki では不要(2014-11-11)
syntax region wikiVerbatimSoft start=/--(/ end=/--)/ contains=@wikiWord
syntax region wikiVerbatimHard start=/---(/ end=/---)/ contains=@wikiWord

"syntax match memoLabel display "^\%>1l\k\+\>"
"syntax match memoLabelUpper display "^[A-Z]\+\>\(\s\|\d\|$\)"
"syntax match memoLabelDate display "^\d\+-\k\+-\d\+\(\.\)\="
"syntax match memoLabelSquare display "^\s*[■□◆◇]"hs=e-1
"syntax match memoLabelRound display "^\s*[○●◎〇]"hs=e-1
"syntax match memoLabelParenthesis display "\(^\s*\)\@<=([^)]*)"
"syntax match memoLabelWarning display "注意:"

"syntax match memoTitle display "\%1l.*"
"syntax match memoDate display "\<\([012]\d\|3[01]\)-\k\+-\d\+\(\.\)\="
"syntax match memoUrl display "\(http\|ftp\):[-!#%&+,./0-9:;=?@A-Za-z_~]\+"

"syntax match memoListItem display "^\s*[-+*]\s\+\S.*$"
"syntax match memoListOrderedItem display "^\s*\d\+[.):]\s\+\S.*$"

"syntax match memoComment display '^\s*#\s\+\S.*$'
"syntax match memoCommentTitle display '^\s*\u\a*\(\s\+\u\a*\)*:'
"syntax match memoCommentVim display '^\s*vi\(m\)\=:[^:]*:'


hi def link wikiTbd		Error
hi def link wikiTodo		ToDo

hi def link wikiMidashiDai	Statement
hi def link wikiMidashiChu	Type
hi def link wikiMidashiSho	Statement

hi def link wikiListOne		Identifier
hi def link wikiListTwo		PreProc
hi def link wikiListThree	Identifier

hi def link wikiYougo		Identifier

hi def link wikiLine		Error

hi def link wikiName		Underlined
hi def link wikiUrl		Underlined

"hi def link wikiBold Underlined
hi def wikiBold gui=bold guifg=red
"hi def link wikiItalic Underlined
hi def wikiItalic gui=italic guifg=red

"hi def link wikiVerbatim	Constant   <= BERTWave Wiki では不要(2014-11-11)
hi def link wikiVerbatimSoft	Special
hi def link wikiVerbatimHard	Constant

"hi def link memoLabel			Statement
"hi def link memoLabelUpper		Todo
"hi def link memoLabelDate		Todo
"hi def link memoLabelSquare		Comment
"hi def link memoLabelRound		WarningMsg
"hi def link memoLabelWarning		Error
"hi def link memoLabelParenthesis	Special

"hi def link memoTitle			Title
"hi def link memoDate			Constant
"hi def link memoUrl			Underlined

"hi def link memoListItem		Identifier
"hi def link memoListOrderedItem		Identifier

"hi def link memoComment			Comment
"hi def link memoCommentTitle		PreProc
"hi def link memoCommentVim		PreProc

let b:current_syntax = "wiki"

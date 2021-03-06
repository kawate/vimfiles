"Vim syntax file
"Language:      TeraTerm Macro Language(ttl)

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finishendif
endif

syn keyword ttlStatement    goto call end include return call execcmnd exit pause
syn keyword ttlRepeat       for next while endwhile
syn keyword ttlConditional  if then elseif else endif

syn keyword ttlOperator     and not or xor
syn keyword ttlArgument     inputstr param2 param3 result timeout 

syn match ttlOperator       "\s[-+\*/%]\s"
syn match ttlOperator       "="
syn match ttlOperator       "\s\(<\|>\)\s"

syn match ttlString         "\"[^"]*\""
syn match ttlString         "\'[^']*\'"

syn match ttlLabel	    "^\s*:\s*\h\w*\>"
syn match ttlLabel          "\<\(goto\|call\)\s\+:\h\w*\>"
syn match ttlLabel	    "\<goto\s\+\h\w*\>"
syn match ttlLabel	    ":\h\w*\>"

" => kawate 2011-08-09
"syn match ttlComment        "^[ \t]*;.*$"
syn match ttlComment        ";.*$"
" <= kawate 2011-08-09

syn keyword ttlImplicit     bplusrecv bplussend changedir clearscreen closett
syn keyword ttlImplicit     connect disconnect enablekeyb flushrecv gettitle
syn keyword ttlImplicit     kmtfinish kmtget kmtrecv kmtsend loadkeymap logclose
syn keyword ttlImplicit     logopen logpause logstart logwrite quickvanrecv quickvansend
syn keyword ttlImplicit     recvln restoresetup send sendbreak sendfile sendkcode
syn keyword ttlImplicit     sendln setecho setsync settitle showtt testlink unlink
syn keyword ttlImplicit     wait waitevent waitln waitrecv xmodemrecv xmoddemsend
syn keyword ttlImplicit     zmodemrecv zmodemsend

syn keyword ttlImplicit     code2str int2str str2code str2int strcompare strconcat
syn keyword ttlImplicit     strcopy strlen strscan

syn keyword ttlImplicit     fileclose fileconcat filecopy filecreate filedelete
syn keyword ttlImplicit     filemarkptr fileopen fileopen filereadln filerename
syn keyword ttlImplicit     filesearch fileseek fileseekback filestrseek filestrseek2
syn keyword ttlImplicit     filewrite filewriteln findfirst findnext findclose
syn keyword ttlImplicit     getdir makepath setdir

syn keyword ttlImplicit     delpassword getpassword passwordbox

syn keyword ttlImplicit     beep closesbox exec getdate getenv gettime inputbox messagebox
syn keyword ttlImplicit     setdate setdlgpos setexitcode settime show statusbox yesnobox


"=> kawate 2011-08-09
syn keyword ttlImplicit    callmenu cygconnect gethostname
syn keyword ttlImplicit    scprecv scpsend
syn keyword ttlImplicit    sendbroadcast sendlnbroadcast sendmulticast
syn keyword ttlImplicit    setbaud setdebug setdtr setmulticastname setrts
syn keyword ttlImplicit    wait4all waitn waitregex

syn keyword ttlRepeat      break do loop until enduntil

syn keyword ttlImplicit    sprintf sprintf2 strmatch
syn keyword ttlImplicit    tolower toupper
syn keyword ttlImplicit    fileread clipb2var
syn keyword ttlImplicit    crc32 crc32file
syn keyword ttlImplicit    filenamebox
syn keyword ttlImplicit    getttdir getver
syn keyword ttlImplicit    ifdefined random
syn keyword ttlImplicit    rotateleft rotateright
syn keyword ttlImplicit    setenv var2clipb
"<= kawate 2011-08-09


if version >= 508 || !exists("did_ttl_syntax_inits")
    if version < 508
        let did_ttl_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink ttlStatement     Statement
    HiLink ttlLabel         Label
    HiLink ttlConditional   Conditional
    HiLink ttlRepeat        Repeat

    HiLink ttlOperator      Operator

    HiLink ttlArgument      Identifier

    HiLink ttlString        String

    HiLink ttlComment       Comment
    HiLink ttlImplicit      Function

    delcommand HiLink
endif

let b:current_syntax = "ttl"

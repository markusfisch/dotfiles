set background=dark
highlight clear

if exists("syntax on")
	syntax reset
endif

let g:colors_name = "haze"

hi Normal ctermfg=251 ctermbg=235

hi Comment ctermfg=169 ctermbg=NONE

hi Constant ctermfg=141 ctermbg=NONE
hi link String Constant
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Constant

hi Identifier ctermfg=243 ctermbg=NONE
hi link Function Identifier

hi Statement ctermfg=243 ctermbg=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Operator Statement
hi link Keyword Statement
hi link Exception Statement

hi PreProc ctermfg=254 ctermbg=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

hi Type ctermfg=243 ctermbg=NONE
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=253 ctermbg=NONE
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special

hi Underlined ctermbg=141
hi Error ctermbg=206
hi Todo ctermfg=254 ctermbg=NONE

hi ColorColumn ctermbg=236
hi CursorLineNR ctermfg=241 ctermbg=234
hi Directory ctermfg=254
hi ErrorMsg ctermbg=206
hi Folded ctermfg=243 ctermbg=NONE
hi FoldColumn ctermfg=251 ctermbg=235
hi HtmlLink ctermfg=141 ctermbg=NONE
hi LineNr ctermfg=238 ctermbg=NONE
hi MatchParen ctermfg=235 ctermbg=141
hi ModeMsg ctermfg=141
hi MoreMsg ctermfg=141
hi NonText ctermfg=239 ctermbg=NONE
hi Pmenu ctermfg=251 ctermbg=237
hi PmenuSel ctermfg=253 ctermbg=242
hi Question ctermfg=141
hi Search ctermfg=232 ctermbg=141
hi StatusLine ctermfg=234 ctermbg=243
hi StatusLineNC ctermfg=234 ctermbg=238
hi Title ctermfg=254 ctermbg=NONE
hi VertSplit ctermfg=239 ctermbg=NONE
hi Visual ctermbg=237
hi WarningMsg ctermfg=206

" Colorscheme generated by https://github.com/arcticlimer/djanho
highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color1 = '#54c59f'
let s:Color7 = '#adacae'
let s:Color8 = '#1f1a27'
let s:Color12 = '#2e2b45'
let s:Color5 = '#6d6d6d'
let s:Color6 = '#6cb2c7'
let s:Color2 = '#c7a06f'
let s:Color3 = '#c55858'
let s:Color0 = '#8464c6'
let s:Color9 = '#21202e'
let s:Color10 = '#1c393b'
let s:Color13 = '#3b3754'
let s:Color11 = '#3c2431'
let s:Color4 = '#bdbdbd'

call s:highlight('Keyword', '', s:Color0, '')
call s:highlight('Operator', '', s:Color0, '')
call s:highlight('Type', '', s:Color0, '')
call s:highlight('Constant', '', s:Color1, '')
call s:highlight('String', '', s:Color1, '')
call s:highlight('Function', '', s:Color2, '')
call s:highlight('Error', '', s:Color3, '')
call s:highlight('Identifier', '', s:Color4, '')
call s:highlight('Comment', '', s:Color5, '')
call s:highlight('Function', '', s:Color2, '')
call s:highlight('Type', '', s:Color6, '')
call s:highlight('StatusLine', s:Color7, s:Color8, '')
call s:highlight('WildMenu', s:Color9, s:Color4, '')
call s:highlight('Pmenu', s:Color9, s:Color4, '')
call s:highlight('PmenuSel', s:Color4, s:Color9, '')
call s:highlight('PmenuThumb', s:Color9, s:Color4, '')
call s:highlight('DiffAdd', s:Color10, '', '')
call s:highlight('DiffDelete', s:Color11, '', '')
call s:highlight('Normal', s:Color9, s:Color4, '')
call s:highlight('Visual', s:Color12, '', '')
call s:highlight('CursorLine', s:Color12, '', '')
call s:highlight('ColorColumn', s:Color12, '', '')
call s:highlight('SignColumn', s:Color9, '', '')
call s:highlight('LineNr', '', s:Color13, '')
call s:highlight('TabLine', s:Color9, s:Color5, '')
call s:highlight('TabLineSel', s:Color1, s:Color9, '')
call s:highlight('TabLineFill', s:Color9, s:Color5, '')
call s:highlight('TSPunctDelimiter', '', s:Color4, '')

highlight! link TSString String
highlight! link Folded Comment
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSParameter Constant
highlight! link TSConstant Constant
highlight! link NonText Comment
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link Conditional Operator
highlight! link Whitespace Comment
highlight! link TSFunction Function
highlight! link CursorLineNr Identifier
highlight! link TSRepeat Repeat
highlight! link Macro Function
highlight! link TSTagDelimiter Type
highlight! link TelescopeNormal Normal
highlight! link TSTag MyTag
highlight! link TSNamespace TSType
highlight! link TSFloat Number
highlight! link TSField Constant
highlight! link Repeat Conditional
highlight! link TSLabel Type
highlight! link TSPunctBracket MyTag
highlight! link TSType Type
highlight! link TSOperator Operator
highlight! link Operator Keyword
highlight! link TSKeyword Keyword
highlight! link TSFuncMacro Macro
highlight! link TSComment Comment
highlight! link TSParameterReference TSParameter
highlight! link TSProperty TSField
highlight! link TSNumber Number
highlight! link TSConditional Conditional

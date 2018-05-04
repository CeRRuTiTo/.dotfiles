"  "        ___                                 "
"  "       -   -_, ,,  |\                       "
"  "      (  ~/||  ||   \\         '            "
"  "      (  / ||  ||  / \\ \\ \\ \\ \\/\\      "
"  "       \/==||  || || || || || || || ||      "
"  "       /_ _||  || || || || || || || ||      "
"  "      (  - \\, \\  \\/  \\/\\ \\ \\ \\      "




" A Terminal and Gui colorscheme
" Author:       Alessandro Yorba
" Maintainer:   Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Alduin
" License:      MIT


set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

" Colors:
"----------------------------------------------------------------
let s:alduin = {}

let s:alduin.Abyss       = [ '000000', 16  ]
let s:alduin.Krosulhah   = [ '5f0000', 52  ]
let s:alduin.Morthal     = [ '5f5f87', 60  ]
let s:alduin.Dawnstar    = [ '5f8787', 66  ]
let s:alduin.Durnehviir  = [ '875f5f', 95  ]
let s:alduin.Winterhold  = [ '87875f', 101 ]
let s:alduin.Relonikiv   = [ '878787', 102 ]
let s:alduin.Falkreath   = [ '8787af', 103 ]
let s:alduin.Mirmulnir   = [ '87afaf', 109 ]
let s:alduin.Markarth    = [ '87ffaf', 121 ]
let s:alduin.Sahloknir   = [ 'af0000', 124 ]
let s:alduin.Odahviing   = [ 'af5f00', 130 ]
let s:alduin.Windhelm    = [ 'af5f5f', 131 ]
let s:alduin.Viinturuth  = [ 'af875f', 137 ]
let s:alduin.Kruziikrel  = [ 'f9ee98', 138 ]
let s:alduin.Riverwood   = [ 'afd7d7', 152 ]
let s:alduin.Sahrotaar   = [ 'dfaf87', 180 ]
let s:alduin.Whiterun    = [ 'dfdfaf', 187 ]
let s:alduin.Paarthurnax = [ 'ffdf87', 222 ]
let s:alduin.Oblivion    = [ '080808', 232 ]
let s:alduin.Solitude    = [ '121212', 233 ]
let s:alduin.Skyrim      = [ '1c1c1c', 234 ]
let s:alduin.Ivarstead   = [ '262626', 235 ]
let s:alduin.Riften      = [ '303030', 236 ]
let s:alduin.Rorikstead  = [ '3a3a3a', 237 ]
let s:alduin.Nightingale = [ '585858', 240 ]
let s:alduin.Ivory       = [ 'eeeeee', 255 ]

let s:alduin.White        = [ 'eeeeee', 255 ]
let s:alduin.Black        = [ '000000', 16  ]
let s:alduin.Blue         = [ '87afff', 110 ]
let s:alduin.DarkestGray  = [ '3a3a3a', 234 ]
let s:alduin.DarkGray     = [ '3a3a3a', 239 ]
let s:alduin.Gray         = [ '3a3a3a', 241 ]
let s:alduin.Red          = [ 'd75f5f', 167 ]
let s:alduin.Yellow       = [ 'CD6A50', 223 ]
let s:alduin.BrownYellow  = [ 'af875f', 137 ]
let s:alduin.Brown        = [ 'af8700', 137 ]
let s:alduin.Green        = [ '87af5f', 107 ]
let s:alduin.BrightYellow = [ 'ffd75f', 221 ]
let s:alduin.Orange       = [ 'CD6A50', 172 ]
let s:alduin.LightCyan    = [ 'afd7d7', 152 ]


function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let highlightString = 'hi ' . a:group . ' '

    " Settings for highlight group ctermfg & guifg
    if strlen(a:fg)
        if a:fg == 'fg'
            let highlightString .= 'guifg=fg ctermfg=fg '
        else
            let color = get(s:alduin, a:fg)
            let highlightString .= 'guifg=#' . color[0] . ' ctermfg=' . color[1] . ' '
        endif
    endif

    " Settings for highlight group termbg & guibg
    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let highlightString .= 'guibg=bg ctermbg=bg '
        else
            let color = get(s:alduin, a:1)
            let highlightString .= 'guibg=#' . color[0] . ' ctermbg=' . color[1] . ' '
        endif
    endif

    " Settings for highlight group cterm & gui
    if a:0 >= 2 && strlen(a:2)
        let highlightString .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    " Settings for highlight guisp
    if a:0 >= 3 && strlen(a:3)
        let color = get(s:alduin, a:3)
        let highlightString .= 'guisp=#' . color[0] . ' '
    endif

    " echom highlightString

    execute highlightString
endfunction


" Editor Settings:
"--------------------------------------------------------------------------------
call s:HL( 'Normal', 'White', 'Black', '' )
call s:HL( 'Cursor', 'Black', 'Red', 'none' )
call s:HL( 'CursorLineNR', 'Red', '', 'none' )
call s:HL( 'CursorLine', '', 'DarkestGray', 'none' )
call s:HL( 'CursorColumn', '', 'DarkestGray', 'none' )
call s:HL( 'LineNr', 'Gray', 'Black','none' )


" Number Column:
"--------------------------------------------------------------------------------
call s:HL( 'FoldColumn', 'Mirmulnir', 'Skyrim', '' )
call s:HL( 'Folded', 'Rorikstead', 'Solitude', 'none' )
call s:HL( 'SignColumn', 'Winterhold', 'Solitude','none' )


" WindowTab Delimiters:
"--------------------------------------------------------------------------------
call s:HL( 'VertSplit', 'White', 'DarkGray', 'none' )
call s:HL( 'TabLine', 'Winterhold', 'Solitude', 'none' )
call s:HL( 'TabLineFill', 'Winterhold', 'Solitude', 'none' )
call s:HL( 'TabLineSel', 'Solitude', 'Winterhold', 'none' )


" File Navigation:
"--------------------------------------------------------------------------------
call s:HL( 'Directory', 'Red', '', 'none' )
call s:HL( 'Search', 'White', 'Krosulhah', 'none' )
call s:HL( 'IncSearch', 'White', 'Krosulhah', 'none' )


" Prompt Status:
"--------------------------------------------------------------------------------
call s:HL( 'StatusLine', 'White', 'DarkGray', 'none' )
call s:HL( 'StatusLineNC', 'White', 'Riften', 'none' )
call s:HL( 'WildMenu', 'Whiterun', 'Krosulhah', 'none' )
call s:HL( 'Title', 'Yellow', '', 'none' )
call s:HL( 'MoreMsg', 'Sahrotaar', '', 'none' )
call s:HL( 'ModeMsg', 'Mirmulnir', '', 'none' )
call s:HL( 'Question', 'Durnehviir', '', '' )


" Visual Aid:
"--------------------------------------------------------------------------------
call s:HL( 'MatchParen', 'BrightYellow', 'DarkestGray', 'none' )
call s:HL( 'Visual', 'Black', 'BrightYellow', 'none' )
call s:HL( 'VisualNOS', '', '', 'underline' )
call s:HL( 'NonText', 'Winterhold', '', 'none' )
call s:HL( 'Todo', 'DarkGray', 'Black', 'italic' )
call s:HL( 'Underlined', 'Riverwood', '', 'none' )
call s:HL( 'Error', 'Red', 'Black', 'reverse' )
call s:HL( 'ErrorMsg', 'Red', 'Black', 'reverse' )
call s:HL( 'WarningMsg', 'Red', '', 'none' )
call s:HL( 'SpecialKey', 'Mirmulnir', '', '' )


" Variable Types:
"--------------------------------------------------------------------------------
call s:HL( 'Constant', 'BrightYellow', '', 'none' )
call s:HL( 'String', 'Green', '', 'none' )
call s:HL( 'Character', 'Odahviing', '', 'none' )
call s:HL( 'Number', 'Red', '', 'none' )
call s:HL( 'Boolean', 'Red', '', 'none' )
call s:HL( 'Float', 'Red', '', 'none' )
call s:HL( 'Identifier', 'Blue', '', 'none' )
call s:HL( 'Function', 'Brown', '', 'none' )


" Language Constructs:
"--------------------------------------------------------------------------------
call s:HL( 'Statement', 'Brown', '', 'none' )
call s:HL( 'Conditional', 'Brown', '', 'none' )
call s:HL( 'Repeat', 'Brown', '', 'none' )
call s:HL( 'Label', 'Brown', '', 'none' )
call s:HL( 'Operator', 'Brown', '', 'none' )
call s:HL( 'Keyword', 'Brown', '', 'none' )
call s:HL( 'Exception', 'Brown', '', 'none' )
call s:HL( 'Comment', 'DarkGray', '', 'none' )
call s:HL( 'SpecialComment', 'DarkGray', 'Solitude', 'reverse' )
call s:HL( 'Special', 'White', '', 'none' )


" C Like:
"--------------------------------------------------------------------
call s:HL( 'PreProc', 'Sahrotaar', '', 'none' )
call s:HL( 'Include', 'Sahrotaar', '', 'none' )
call s:HL( 'Define', 'Sahrotaar', '', 'none' )
call s:HL( 'Macro', 'Sahrotaar', '', 'none' )
call s:HL( 'PreCondit', 'Sahrotaar', '', 'none' )
call s:HL( 'Type', 'Paarthurnax', '', 'none' )
call s:HL( 'StorageClass', 'Viinturuth', '', 'none' )
call s:HL( 'Structure', 'Viinturuth', '', 'none' )
call s:HL( 'Typedef', 'Viinturuth', '', 'none' )

" JavaScript:
" ------------------------------------------------------------------
call s:HL( 'javaScriptFunction', 'Brown', '', 'none' )
call s:HL( 'javaScriptFuncDef', 'White', '', 'none' )
call s:HL( 'javaScriptFuncKeyword', 'BrownYellow', '', 'none' ) " BrownYellow
call s:HL( 'javaScriptBraces', 'BrownYellow', '', 'none' )
call s:HL( 'javaScriptIdentifier', 'Blue', '', 'none' )
call s:HL( 'javaScriptNull', 'Red', '', 'none' )
call s:HL( 'javaScriptDocTags', 'Red', '', 'none' )
call s:HL( 'javaScriptLabel', 'White', '', 'none' )
call s:HL( 'javaScriptType', 'Red', '', 'none' )
call s:HL( 'javaScriptSource', 'BrownYellow', '', 'none' )
call s:HL( 'javaScriptReserved', 'BrownYellow', '', 'none' )
call s:HL( 'javaScriptStatement', 'BrightYellow', '', 'none' )
call s:HL( 'javaScriptBoolean', 'Red', '', 'none' )
call s:HL( 'javaScriptObjectKey', 'LightCyan', '', 'none' ) " White
call s:HL( 'javaScriptBrowserObjects', 'BrightYellow', '', 'none' ) " White
call s:HL( 'javaScriptDOMObjects', 'White', '', 'none' ) " White
call s:HL( 'javaScriptDOMMethods', 'White', '', 'none' ) " White
call s:HL( 'javaScriptDOMProperties', 'White', '', 'none' ) " White
call s:HL( 'javaScriptHtmlEvents', 'White', '', 'none' ) " White
call s:HL( 'javaScriptHtmlElemProperties', 'White', '', 'none' ) " White
call s:HL( 'javaScriptHtmlElemAttrs', 'White', '', 'none' ) " White


" Ruby:
" ------------------------------------------------------------------
call s:HL( 'rubyGlobalVariable', 'Red', '', 'none' )


" HTML:
"--------------------------------------------------------------------
call s:HL( 'htmlArg', 'Durnehviir', '', 'none' )
call s:HL( 'htmlItalic', 'Sahrotaar', '', 'none' )
call s:HL( 'htmlTag', 'BrownYellow', '', 'none' )
call s:HL( 'htmlEndTag', 'BrownYellow', '', 'none' )
call s:HL( 'htmlTagName', 'BrownYellow', '', 'none' )


" Completion Menu:
"--------------------------------------------------------------------
call s:HL( 'Pmenu', 'White', 'DarkestGray', 'none' )
call s:HL( 'PmenuSel', 'White', 'Krosulhah', 'none' )
call s:HL( 'PmenuSbar', '', 'Solitude', 'none' )
call s:HL( 'PmenuThumb', '', 'Whiterun', '' )


" Spelling:
"--------------------------------------------------------------------
call s:HL( 'SpellBad', 'Windhelm', '', 'undercurl' )

" YCM Highlighting:
"--------------------------------------------------------------------
call s:HL( 'YcmErrorSign', 'Red', '', 'undercurl' )
call s:HL( 'YcmWarningSign', 'Red', '', 'undercurl' )
call s:HL( 'YcmErrorLine', 'Red', '', 'undercurl' )
call s:HL( 'YcmWarningLine', 'Red', '', 'undercurl' )
call s:HL( 'YcmErrorSection', 'White', 'Red', 'none' )
call s:HL( 'YcmWarningSection', 'White', 'Red', 'none' )

call s:HL('Tag', 'BrownYellow', '', 'none')
call s:HL('xmlTag', 'BrownYellow', '', 'none')
call s:HL('xmlTagName', 'BrownYellow', '', 'none')
call s:HL('xmlEndTag', 'BrownYellow', '', 'none')

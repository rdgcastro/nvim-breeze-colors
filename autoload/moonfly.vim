" Background and foreground
let s:black     = '#080808'
let s:white     = '#c6c6c6'
" Variations of charcoal-grey
let s:grey0     = '#323437'
let s:grey1     = '#373c4d'
let s:grey254   = '#e4e4e4'
let s:grey249   = '#b2b2b2'
let s:grey247   = '#9e9e9e'
let s:grey246   = '#949494'
let s:grey244   = '#808080'
let s:grey241   = '#626262'
let s:grey239   = '#4e4e4e'
let s:grey238   = '#444444'
let s:grey237   = '#3a3a3a'
let s:grey236   = '#303030'
let s:grey235   = '#262626'
let s:grey234   = '#1c1c1c'
let s:grey233   = '#121212'
" Core theme colors
let s:khaki     = '#c2c292'
let s:yellow    = '#e3c78a'
let s:orange    = '#de935f'
let s:coral     = '#f09479'
let s:orchid    = '#e196a2'
let s:lime      = '#85dc85'
let s:green     = '#8cc85f'
let s:emerald   = '#36c692'
let s:blue      = '#80a0ff'
let s:sky       = '#74b2ff'
let s:turquoise = '#79dac8'
let s:purple    = '#ae81ff'
let s:cranberry = '#e65e72'
let s:violet    = '#cf87e8'
let s:crimson   = '#ff5189'
let s:red       = '#ff5454'
" Extra colors
let s:spring    = '#00875f'
let s:mineral   = '#314940'
let s:bay       = '#4d5d8d'

function! breeze#Style() abort
    "-----------------------------------------------------------------------
    " Custom styling groups
    "-----------------------------------------------------------------------

    exec 'highlight BreezeVisual guibg=' . s:grey0
    exec 'highlight BreezeWhite guifg=' . s:white
    exec 'highlight BreezeGrey0 guifg=' . s:grey0
    exec 'highlight BreezeGrey254 guifg=' . s:grey254
    exec 'highlight BreezeGrey249 guifg=' . s:grey249
    exec 'highlight BreezeGrey247 guifg=' . s:grey247
    exec 'highlight BreezeGrey246 guifg=' . s:grey246
    exec 'highlight BreezeGrey241 guifg=' . s:grey241
    exec 'highlight BreezeGrey239 guifg=' . s:grey239
    exec 'highlight BreezeGrey238 guifg=' . s:grey238
    exec 'highlight BreezeGrey237 guifg=' . s:grey237
    exec 'highlight BreezeGrey236 guifg=' . s:grey236
    exec 'highlight BreezeGrey235 guifg=' . s:grey235
    exec 'highlight BreezeKhaki guifg=' . s:khaki
    exec 'highlight BreezeYellow guifg=' . s:yellow
    exec 'highlight BreezeOrange guifg=' . s:orange
    exec 'highlight BreezeCoral guifg=' . s:coral
    exec 'highlight BreezeOrchid guifg=' . s:orchid
    exec 'highlight BreezeLime guifg=' . s:lime
    exec 'highlight BreezeGreen guifg=' . s:green
    exec 'highlight BreezeEmerald guifg=' . s:emerald
    exec 'highlight BreezeBlue guifg=' . s:blue
    exec 'highlight BreezeSky guifg=' . s:sky
    exec 'highlight BreezeTurquoise guifg=' . s:turquoise
    exec 'highlight BreezePurple guifg=' . s:purple
    exec 'highlight BreezeCranberry guifg=' . s:cranberry
    exec 'highlight BreezeViolet guifg=' . s:violet
    exec 'highlight BreezeCrimson guifg=' . s:crimson
    exec 'highlight BreezeRed guifg=' . s:red
    " Statusline helper colors
    exec 'highlight BreezeBlueMode guibg=' . s:blue . ' guifg=' . s:grey234
    exec 'highlight BreezeEmeraldMode guibg=' . s:emerald . ' guifg=' . s:grey234
    exec 'highlight BreezePurpleMode guibg=' . s:purple . ' guifg=' . s:grey234
    exec 'highlight BreezeCrimsonMode guibg=' . s:crimson . ' guifg=' . s:grey234
    exec 'highlight BreezeYellowMode guibg=' . s:yellow . ' guifg=' . s:grey234
    " Diagnostic helper colors
    exec 'highlight BreezeDiagnosticUndercurlError gui=undercurl guisp=' . s:red
    exec 'highlight BreezeDiagnosticUndercurlWarn gui=undercurl guisp=' . s:yellow
    exec 'highlight BreezeDiagnosticUndercurlInfo gui=undercurl guisp=' . s:sky
    exec 'highlight BreezeDiagnosticUnderlineError gui=underline guisp=' . s:red
    exec 'highlight BreezeDiagnosticUnderlineWarn gui=underline guisp=' . s:yellow
    exec 'highlight BreezeDiagnosticUnderlineInfo gui=underline guisp=' . s:sky
    exec 'highlight BreezeDiagnosticVirtualTextError guibg=' . s:grey234 . ' guifg=' . s:red
    exec 'highlight BreezeDiagnosticVirtualTextWarn guibg=' . s:grey234 . ' guifg=' . s:yellow
    exec 'highlight BreezeDiagnosticVirtualTextInfo guibg=' . s:grey234 . ' guifg=' . s:sky

    "-----------------------------------------------------------------------
    " Standard styling
    "-----------------------------------------------------------------------

    " Specify the colors used by the inbuilt terminal
    if g:breezeTerminalColors
        let g:terminal_ansi_colors = [
                    \ s:grey0, s:red, s:green, s:yellow,
                    \ s:blue, s:violet, s:turquoise, s:white,
                    \ s:grey246, s:crimson, s:emerald, s:khaki,
                    \ s:sky, s:purple, s:lime, s:grey254
                    \]
    endif

    " Background and text
    if g:breezeTransparent
        exec 'highlight Normal guibg=NONE guifg=' . s:white
    else
        exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
    endif

    " Color of mode text, -- INSERT --
    exec 'highlight ModeMsg guifg=' . s:grey247 . ' gui=none'

    " Comments
    if g:breezeItalics
        exec 'highlight Comment guifg=' . s:grey246 . ' gui=italic'
    else
        exec 'highlight Comment guifg=' . s:grey246
    endif

    " Functions
    highlight! link Function BreezeSky

    " Strings
    highlight! link String BreezeKhaki

    " Booleans
    highlight! link Boolean BreezeCranberry

    " Identifiers
    highlight! link Identifier BreezeTurquoise

    " Color of titles
    exec 'highlight Title guifg=' . s:orange . ' gui=none'

    " const, static
    highlight! link StorageClass BreezeCoral

    " void, intptr_t
    exec 'highlight Type guifg=' . s:emerald . ' gui=none'

    " Numbers
    highlight! link Constant BreezeOrange

    " Character constants
    highlight! link Character BreezePurple

    " Exceptions
    highlight! link Exception BreezeCrimson

    " ifdef/endif
    highlight! link PreProc BreezeCranberry

    " case in switch statement
    highlight! link Label BreezeTurquoise

    " end-of-line '$', end-of-file '~'
    exec 'highlight NonText guifg=' . s:grey241 . ' gui=none'

    " sizeof
    highlight! link Operator BreezeCranberry

    " for, while
    highlight! link Repeat BreezeViolet

    " Search
    exec 'highlight Search cterm=none guibg=' . s:grey1 . ' guifg=' . s:grey254 . ' gui=none'
    exec 'highlight CurSearch cterm=none guibg=' . s:coral . ' guifg=' . s:black . ' gui=none'
    exec 'highlight IncSearch cterm=none guibg=' . s:yellow . ' guifg=' . s:black . ' gui=none'

    " '\n' sequences
    highlight! link Special BreezeCranberry

    " if, else
    exec 'highlight Statement guifg=' . s:violet . ' gui=none'

    " struct, union, enum, typedef
    highlight! link Structure BreezeBlue

    " Status, split and tab lines
    exec 'highlight StatusLine cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
    exec 'highlight StatusLineNC cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
    exec 'highlight Tabline cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
    exec 'highlight TablineSel cterm=none guibg=' . s:grey234 . ' guifg=' . s:blue . ' gui=none'
    exec 'highlight TablineSelSymbol cterm=none guibg=' . s:grey234 . ' guifg=' . s:emerald . ' gui=none'
    exec 'highlight TablineFill cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
    exec 'highlight StatusLineTerm cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
    exec 'highlight StatusLineTermNC cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
    if g:breezeWinSeparator == 0
        exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
    elseif g:breezeWinSeparator == 1
        exec 'highlight VertSplit cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
    else
        exec 'highlight VertSplit guibg=NONE guifg=' . s:grey236 . ' gui=none'
    end

    " Visual selection
    highlight! link Visual BreezeVisual
    exec 'highlight VisualNOS guibg=' . s:grey0 . ' guifg=fg gui=none'

    " Errors, warnings and whitespace-eol
    exec 'highlight Error guibg=bg guifg=' . s:red
    exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
    exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

    " Auto-text-completion menu
    exec 'highlight Pmenu guibg=' . s:grey235 . ' guifg=fg'
    exec 'highlight PmenuSel guibg=' . s:spring . ' guifg=' . s:grey254
    exec 'highlight PmenuSbar guibg=' . s:grey235
    exec 'highlight PmenuThumb guibg=' . s:grey244
    exec 'highlight WildMenu guibg=' . s:spring . ' guifg=' . s:grey254

    " Spelling errors
    if g:breezeUndercurls
        exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
        exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:sky
    else
        exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:red . ' gui=underline guisp=' . s:red
        exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
        exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
        exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:sky . ' gui=underline guisp=' . s:sky
    endif

    " Misc
    exec 'highlight Question guifg=' . s:lime . ' gui=none'
    exec 'highlight MoreMsg guifg=' . s:red . ' gui=none'
    exec 'highlight LineNr guibg=bg guifg=' . s:grey241 . ' gui=none'
    if g:breezeCursorColor
        exec 'highlight Cursor guifg=bg guibg=' . s:blue
    else
        exec 'highlight Cursor guifg=bg guibg=' . s:grey247
    endif
    exec 'highlight lCursor guifg=bg guibg=' . s:grey247
    exec 'highlight CursorLineNr cterm=none guibg=' . s:grey234 . ' guifg=' . s:blue . ' gui=none'
    exec 'highlight CursorColumn guibg=' . s:grey234
    exec 'highlight CursorLine cterm=none guibg=' . s:grey234
    exec 'highlight Folded guibg=' . s:grey234 . ' guifg='. s:lime
    exec 'highlight FoldColumn guibg=' . s:grey236 . ' guifg=' . s:lime
    exec 'highlight SignColumn guibg=bg guifg=' . s:lime
    exec 'highlight Todo guibg=' . s:grey235 . ' guifg=' . s:yellow
    exec 'highlight SpecialKey guibg=bg guifg=' . s:sky
    if g:breezeUnderlineMatchParen
        exec 'highlight MatchParen guibg=bg gui=underline'
    else
        highlight! link MatchParen BreezeVisual
    endif
    highlight! link Ignore BreezeSky
    exec 'highlight Underlined guifg=' . s:emerald . ' gui=none'
    exec 'highlight QuickFixLine guibg=' . s:grey237
    highlight! link Delimiter BreezeWhite
    highlight! link qfFileName BreezeEmerald

    " Color column (after line 80)
    exec 'highlight ColorColumn guibg=' . s:grey233

    " Conceal color
    exec 'highlight Conceal guibg=NONE guifg=' . s:grey249

    " vimdiff -d
    exec 'highlight DiffAdd guibg=' . s:mineral
    exec 'highlight DiffChange guibg=' . s:grey236
    exec 'highlight DiffDelete guibg=' . s:grey236 . ' guifg=' . s:grey241 . ' gui=none'
    exec 'highlight DiffText guibg=' . s:bay

    "-----------------------------------------------------------------------
    " Language styling
    "-----------------------------------------------------------------------

    " C
    highlight! link cDefine BreezeViolet
    highlight! link cPreCondit BreezeViolet
    highlight! link cStatement BreezeViolet
    highlight! link cStructure BreezeCoral

    " C++
    highlight! link cppAccess BreezeLime
    highlight! link cppCast BreezeTurquoise
    highlight! link cppCustomClass BreezeTurquoise
    highlight! link cppExceptions BreezeLime
    highlight! link cppModifier BreezeViolet
    highlight! link cppOperator BreezeGreen
    highlight! link cppStatement BreezeTurquoise
    highlight! link cppSTLconstant BreezeBlue
    highlight! link cppSTLnamespace BreezeBlue
    highlight! link cppStructure BreezeViolet

    " C#
    highlight! link csModifier BreezeLime
    highlight! link csPrecondit BreezeViolet
    highlight! link csStorage BreezeViolet
    highlight! link csXmlTag BreezeBlue

    " Clojure
    highlight! link clojureDefine BreezeViolet
    highlight! link clojureKeyword BreezePurple
    highlight! link clojureMacro BreezeOrange
    highlight! link clojureParen BreezeBlue
    highlight! link clojureSpecial BreezeSky

    " CoffeeScript
    highlight! link coffeeConstant BreezeEmerald
    highlight! link coffeeGlobal BreezeTurquoise
    highlight! link coffeeKeyword BreezeOrange
    highlight! link coffeeObjAssign BreezeSky
    highlight! link coffeeSpecialIdent BreezeLime
    highlight! link coffeeSpecialVar BreezeBlue
    highlight! link coffeeStatement BreezeCoral

    " CSS/SCSS
    highlight! link cssAtRule BreezeViolet
    highlight! link cssAttr BreezeTurquoise
    highlight! link cssBraces BreezeWhite
    highlight! link cssClassName BreezeEmerald
    highlight! link cssClassNameDot BreezeViolet
    highlight! link cssColor BreezeTurquoise
    highlight! link cssIdentifier BreezeSky
    highlight! link cssProp BreezeTurquoise
    highlight! link cssTagName BreezeBlue
    highlight! link cssUnitDecorators BreezeKhaki
    highlight! link cssValueLength BreezePurple
    highlight! link cssValueNumber BreezePurple
    highlight! link sassId BreezeBlue
    highlight! link sassIdChar BreezeViolet
    highlight! link sassMedia BreezeViolet
    highlight! link scssSelectorName BreezeBlue

    " Dart
    highlight! link dartMetadata BreezeLime
    highlight! link dartStorageClass BreezeViolet
    highlight! link dartTypedef BreezeViolet

    " Elixir
    highlight! link eelixirDelimiter BreezeCrimson
    highlight! link elixirAtom BreezePurple
    highlight! link elixirBlockDefinition BreezeViolet
    highlight! link elixirDefine BreezeViolet
    highlight! link elixirDocTest BreezeGrey247
    highlight! link elixirExUnitAssert BreezeLime
    highlight! link elixirExUnitMacro BreezeSky
    highlight! link elixirKernelFunction BreezeGreen
    highlight! link elixirKeyword BreezeOrange
    highlight! link elixirModuleDefine BreezeBlue
    highlight! link elixirPrivateDefine BreezeViolet
    highlight! link elixirStringDelimiter BreezeKhaki
    highlight! link elixirVariable BreezeTurquoise

    " Elm
    highlight! link elmLetBlockDefinition BreezeLime
    highlight! link elmTopLevelDecl BreezeCoral
    highlight! link elmType BreezeSky

    " Go
    highlight! link goBuiltins BreezeSky
    highlight! link goConditional BreezeViolet
    highlight! link goDeclType BreezeGreen
    highlight! link goDirective BreezeCranberry
    highlight! link goFloats BreezePurple
    highlight! link goFunction BreezeBlue
    highlight! link goFunctionCall BreezeSky
    highlight! link goImport BreezeCranberry
    highlight! link goLabel BreezeYellow
    highlight! link goMethod BreezeSky
    highlight! link goMethodCall BreezeSky
    highlight! link goPackage BreezeViolet
    highlight! link goSignedInts BreezeEmerald
    highlight! link goStruct BreezeCoral
    highlight! link goStructDef BreezeCoral
    highlight! link goUnsignedInts BreezePurple

    " Haskell
    highlight! link haskellDecl BreezeOrange
    highlight! link haskellDeclKeyword BreezeOrange
    highlight! link haskellIdentifier BreezeTurquoise
    highlight! link haskellLet BreezeSky
    highlight! link haskellOperators BreezeCranberry
    highlight! link haskellType BreezeSky
    highlight! link haskellWhere BreezeViolet

    " Help
    highlight! link helpCommand BreezeOrchid
    highlight! link helpExample BreezeGreen
    highlight! link helpHeadline BreezeBlue
    highlight! link helpHyperTextEntry BreezeTurquoise
    highlight! link helpSectionDelim BreezeBlue

    " HTML
    highlight! link htmlArg BreezeTurquoise
    highlight! link htmlLink BreezeGreen
    highlight! link htmlH1 BreezeCranberry
    highlight! link htmlH2 BreezeOrange
    highlight! link htmlEndTag BreezePurple
    highlight! link htmlTag BreezeLime
    highlight! link htmlTagN BreezeBlue
    highlight! link htmlTagName BreezeBlue
    highlight! link htmlUnderline BreezeWhite
    if g:breezeItalics
        exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
        exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
        exec 'highlight htmlItalic guifg=' . s:grey247 . ' gui=italic'
        exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:grey247 . ' gui=italic'
    else
        exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:coral ' gui=none'
        exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:coral
        exec 'highlight htmlItalic guifg=' . s:grey247 ' gui=none'
        exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:grey247
    endif

    " Java
    highlight! link javaAnnotation BreezeLime
    highlight! link javaBraces BreezeWhite
    highlight! link javaClassDecl BreezeYellow
    highlight! link javaCommentTitle BreezeGrey247
    highlight! link javaConstant BreezeSky
    highlight! link javaDebug BreezeSky
    highlight! link javaMethodDecl BreezeYellow
    highlight! link javaOperator BreezeCrimson
    highlight! link javaScopeDecl BreezeViolet
    highlight! link javaStatement BreezeTurquoise

    " JavaScript, 'pangloss/vim-javascript' plugin
    highlight! link jsClassDefinition BreezeEmerald
    highlight! link jsClassKeyword BreezeOrange
    highlight! link jsFrom BreezeCoral
    highlight! link jsFuncBlock BreezeTurquoise
    highlight! link jsFuncCall BreezeSky
    highlight! link jsFunction BreezeLime
    highlight! link jsGlobalObjects BreezeEmerald
    highlight! link jsModuleAs BreezeCoral
    highlight! link jsObjectKey BreezeSky
    highlight! link jsObjectValue BreezeEmerald
    highlight! link jsOperator BreezeViolet
    highlight! link jsStorageClass BreezeLime
    highlight! link jsTemplateBraces BreezeCranberry
    highlight! link jsTemplateExpression BreezeTurquoise
    highlight! link jsThis BreezeGreen

    " JSX, 'MaxMEllon/vim-jsx-pretty' plugin
    highlight! link jsxAttrib BreezeLime
    highlight! link jsxClosePunct BreezePurple
    highlight! link jsxComponentName BreezeBlue
    highlight! link jsxOpenPunct BreezeLime
    highlight! link jsxTagName BreezeBlue

    " Lua
    highlight! link luaBraces BreezeCranberry
    highlight! link luaBuiltin BreezeGreen
    highlight! link luaFuncCall BreezeSky
    highlight! link luaSpecialTable BreezeSky

    " Markdown, 'tpope/vim-markdown' plugin
    highlight! link markdownBold BreezeYellow
    highlight! link markdownCode BreezeKhaki
    highlight! link markdownCodeDelimiter BreezeKhaki
    highlight! link markdownError NormalNC
    highlight! link markdownH1 BreezeEmerald
    highlight! link markdownH2 BreezeBlue
    highlight! link markdownH3 BreezeTurquoise
    highlight! link markdownH3Delimiter BreezeCrimson
    highlight! link markdownH4 BreezeOrange
    highlight! link markdownH4Delimiter BreezeCrimson
    highlight! link markdownH5 BreezeSky
    highlight! link markdownH5Delimiter BreezeCrimson
    highlight! link markdownH6 BreezeViolet
    highlight! link markdownH6Delimiter BreezeCrimson
    highlight! link markdownHeadingRule BreezeCranberry
    highlight! link markdownItalic BreezeOrchid
    highlight! link markdownUrl BreezePurple

    " Markdown, 'plasticboy/vim-markdown' plugin
    highlight! link mkdDelimiter BreezeWhite
    highlight! link mkdLineBreak NormalNC
    highlight! link mkdListItem BreezeBlue
    highlight! link mkdURL BreezePurple

    " PHP
    highlight! link phpClass BreezeEmerald
    highlight! link phpClasses BreezeBlue
    highlight! link phpFunction BreezeSky
    highlight! link phpParent BreezeWhite
    highlight! link phpType BreezeViolet

    " Python
    highlight! link pythonBuiltin BreezeBlue
    highlight! link pythonClassVar BreezeGreen
    highlight! link pythonCoding BreezeSky
    highlight! link pythonImport BreezeCranberry
    highlight! link pythonOperator BreezeViolet
    highlight! link pythonRun BreezeSky
    highlight! link pythonStatement BreezeViolet

    " Ruby
    highlight! link rubyAccess BreezeYellow
    highlight! link rubyAssertion BreezeSky
    highlight! link rubyAttribute BreezeSky
    highlight! link rubyBlockParameter BreezeGreen
    highlight! link rubyCallback BreezeSky
    highlight! link rubyDefine BreezeViolet
    highlight! link rubyEntities BreezeSky
    highlight! link rubyExceptional BreezeCoral
    highlight! link rubyGemfileMethod BreezeSky
    highlight! link rubyInstanceVariable BreezeTurquoise
    highlight! link rubyInterpolationDelimiter BreezeCranberry
    highlight! link rubyMacro BreezeSky
    highlight! link rubyModule BreezeBlue
    highlight! link rubyPseudoVariable BreezeGreen
    highlight! link rubyResponse BreezeSky
    highlight! link rubyRoute BreezeSky
    highlight! link rubySharpBang BreezeGrey247
    highlight! link rubyStringDelimiter BreezeKhaki
    highlight! link rubySymbol BreezePurple

    " Rust
    highlight! link rustAssert BreezeGreen
    highlight! link rustAttribute BreezeWhite
    highlight! link rustCharacterInvalid BreezeCranberry
    highlight! link rustCharacterInvalidUnicode BreezeCranberry
    highlight! link rustCommentBlockDoc BreezeGrey247
    highlight! link rustCommentBlockDocError BreezeGrey247
    highlight! link rustCommentLineDoc BreezeGrey247
    highlight! link rustCommentLineDocError BreezeGrey247
    highlight! link rustConstant BreezeOrange
    highlight! link rustDerive BreezeGreen
    highlight! link rustEscapeError BreezeCranberry
    highlight! link rustFuncName BreezeBlue
    highlight! link rustIdentifier BreezeBlue
    highlight! link rustInvalidBareKeyword BreezeCranberry
    highlight! link rustKeyword BreezeViolet
    highlight! link rustLifetime BreezeViolet
    highlight! link rustMacro BreezeGreen
    highlight! link rustMacroVariable BreezeViolet
    highlight! link rustModPath BreezeBlue
    highlight! link rustObsoleteExternMod BreezeCranberry
    highlight! link rustObsoleteStorage BreezeCranberry
    highlight! link rustReservedKeyword BreezeCranberry
    highlight! link rustSelf BreezeTurquoise
    highlight! link rustSigil BreezeTurquoise
    highlight! link rustStorage BreezeViolet
    highlight! link rustStructure BreezeViolet
    highlight! link rustTrait BreezeEmerald
    highlight! link rustType BreezeEmerald

    " Scala (note, link highlighting does not work, I don't know why)
    exec 'highlight scalaCapitalWord guifg=' . s:blue
    exec 'highlight scalaCommentCodeBlock guifg=' . s:grey247
    exec 'highlight scalaInstanceDeclaration guifg=' . s:turquoise
    exec 'highlight scalaKeywordModifier guifg=' . s:lime
    exec 'highlight scalaSpecial guifg=' . s:crimson

    " Shell
    highlight! link shAlias BreezeTurquoise
    highlight! link shCommandSub BreezeWhite
    highlight! link shCtrlSeq BreezeKhaki
    highlight! link shLoop BreezeViolet
    highlight! link shRange BreezeWhite
    highlight! link shSetList BreezeTurquoise
    highlight! link shShellVariables BreezeTurquoise
    highlight! link shVariable BreezeTurquoise

    " TypeScript (leafgarland/typescript-vim)
    highlight! link typescriptDOMObjects BreezeBlue
    highlight! link typescriptFuncComma BreezeWhite
    highlight! link typescriptFuncKeyword BreezeLime
    highlight! link typescriptGlobalObjects BreezeBlue
    highlight! link typescriptIdentifier BreezeGreen
    highlight! link typescriptNull BreezeGreen
    highlight! link typescriptOpSymbols BreezeViolet
    highlight! link typescriptOperator BreezeCrimson
    highlight! link typescriptParens BreezeWhite
    highlight! link typescriptReserved BreezeViolet
    highlight! link typescriptStorageClass BreezeLime

    " TypeScript (HerringtonDarkholme/yats.vim)
    highlight! link typeScriptModule BreezeBlue
    highlight! link typescriptAbstract BreezeCoral
    highlight! link typescriptArrayMethod BreezeSky
    highlight! link typescriptArrowFuncArg BreezeWhite
    highlight! link typescriptBOM BreezeEmerald
    highlight! link typescriptBOMHistoryMethod BreezeSky
    highlight! link typescriptBOMLocationMethod BreezeSky
    highlight! link typescriptBOMWindowProp BreezeGreen
    highlight! link typescriptBraces BreezeWhite
    highlight! link typescriptCall BreezeWhite
    highlight! link typescriptClassHeritage BreezeEmerald
    highlight! link typescriptClassKeyword BreezeOrange
    highlight! link typescriptClassName BreezeEmerald
    highlight! link typescriptDecorator BreezeLime
    highlight! link typescriptDOMDocMethod BreezeSky
    highlight! link typescriptDOMEventTargetMethod BreezeSky
    highlight! link typescriptDOMNodeMethod BreezeSky
    highlight! link typescriptExceptions BreezeCrimson
    highlight! link typescriptFuncType BreezeWhite
    highlight! link typescriptMathStaticMethod BreezeSky
    highlight! link typescriptMethodAccessor BreezeViolet
    highlight! link typescriptObjectLabel BreezeSky
    highlight! link typescriptParamImpl BreezeWhite
    highlight! link typescriptStringMethod BreezeSky
    highlight! link typescriptTry BreezeCrimson
    highlight! link typescriptVariable BreezeLime
    highlight! link typescriptXHRMethod BreezeSky

    " Vimscript
    highlight! link vimBracket BreezeSky
    highlight! link vimCommand BreezeViolet
    highlight! link vimCommentTitle BreezeViolet
    highlight! link vimEnvvar BreezeCrimson
    highlight! link vimFuncName BreezeSky
    highlight! link vimFuncSID BreezeSky
    highlight! link vimFunction BreezeSky
    highlight! link vimHighlight BreezeSky
    highlight! link vimNotFunc BreezeViolet
    highlight! link vimNotation BreezeSky
    highlight! link vimOption BreezeTurquoise
    highlight! link vimParenSep BreezeWhite
    highlight! link vimSep BreezeWhite
    highlight! link vimUserFunc BreezeSky

    " XML
    highlight! link xmlAttrib BreezeLime
    highlight! link xmlEndTag BreezeBlue
    highlight! link xmlTag BreezeLime
    highlight! link xmlTagName BreezeBlue

    "-----------------------------------------------------------------------
    " Plugin styling
    "-----------------------------------------------------------------------

    " Git commits
    highlight! link gitCommitBranch BreezeSky
    highlight! link gitCommitDiscardedFile BreezeCrimson
    highlight! link gitCommitDiscardedType BreezeSky
    highlight! link gitCommitHeader BreezePurple
    highlight! link gitCommitSelectedFile BreezeEmerald
    highlight! link gitCommitSelectedType BreezeSky
    highlight! link gitCommitUntrackedFile BreezeCranberry
    highlight! link gitEmail BreezeBlue

    " Git commit diffs
    highlight! link diffAdded BreezeGreen
    highlight! link diffChanged BreezeCrimson
    highlight! link diffIndexLine BreezeCrimson
    highlight! link diffLine BreezeSky
    highlight! link diffRemoved BreezeRed
    highlight! link diffSubname BreezeSky

    " Tagbar plugin
    highlight! link TagbarFoldIcon BreezeGrey247
    highlight! link TagbarVisibilityPublic BreezeLime
    highlight! link TagbarVisibilityProtected BreezeLime
    highlight! link TagbarVisibilityPrivate BreezeLime
    highlight! link TagbarKind BreezeEmerald

    " NERDTree plugin
    highlight! link NERDTreeClosable BreezeGrey246
    highlight! link NERDTreeCWD BreezePurple
    highlight! link NERDTreeDir BreezeSky
    highlight! link NERDTreeDirSlash BreezeCranberry
    highlight! link NERDTreeExecFile BreezeKhaki
    highlight! link NERDTreeFile BreezeWhite
    highlight! link NERDTreeHelp BreezeGrey247
    highlight! link NERDTreeLinkDir BreezeBlue
    highlight! link NERDTreeLinkFile BreezeBlue
    highlight! link NERDTreeLinkTarget BreezeTurquoise
    highlight! link NERDTreeOpenable BreezeGrey246
    highlight! link NERDTreePart BreezeGrey0
    highlight! link NERDTreePartFile BreezeGrey0
    highlight! link NERDTreeUp BreezeBlue

    " NERDTree Git plugin
    highlight! link NERDTreeGitStatusDirDirty BreezeKhaki
    highlight! link NERDTreeGitStatusModified BreezeCrimson
    highlight! link NERDTreeGitStatusRenamed BreezeSky
    highlight! link NERDTreeGitStatusStaged BreezeSky
    highlight! link NERDTreeGitStatusUntracked BreezeRed

    " fern.vim plugin
    highlight! link FernBranchSymbol BreezeGrey246
    highlight! link FernLeafSymbol BreezeBlue
    highlight! link FernLeaderSymbol BreezeGrey237
    highlight! link FernBranchText BreezeBlue
    highlight! link FernMarkedLine BreezeVisual
    highlight! link FernMarkedText BreezeCrimson
    highlight! link FernRootSymbol BreezePurple
    highlight! link FernRootText BreezePurple

    " fern-git-status.vim plugin
    highlight! link FernGitStatusBracket BreezeGrey246
    highlight! link FernGitStatusIndex BreezeEmerald
    highlight! link FernGitStatusWorktree BreezeCrimson

    " Glyph palette
    highlight! link GlyphPalette1 BreezeCranberry
    highlight! link GlyphPalette2 BreezeEmerald
    highlight! link GlyphPalette3 BreezeYellow
    highlight! link GlyphPalette4 BreezeBlue
    highlight! link GlyphPalette6 BreezeTurquoise
    highlight! link GlyphPalette7 BreezeWhite
    highlight! link GlyphPalette9 BreezeCrimson

    " Misc items
    highlight! link bufExplorerHelp BreezeGrey247
    highlight! link bufExplorerSortBy BreezeGrey247
    highlight! link CleverFDefaultLabel BreezeCrimson
    highlight! link CtrlPMatch BreezeCoral
    highlight! link Directory BreezeBlue
    highlight! link erubyDelimiter BreezeCrimson
    highlight! link HighlightedyankRegion BreezeGrey0
    highlight! link jsonKeyword BreezeSky
    highlight! link jsonQuote BreezeWhite
    highlight! link netrwClassify BreezeCranberry
    highlight! link netrwDir BreezeSky
    highlight! link netrwExe BreezeKhaki
    highlight! link tagName BreezeTurquoise
    highlight! link Cheat40Header BreezeBlue
    highlight! link yamlBlockMappingKey BreezeSky
    highlight! link yamlFlowMappingKey BreezeSky
    if g:breezeUnderlineMatchParen
        exec 'highlight MatchWord gui=underline guisp=' . s:coral
    else
        highlight! link MatchWord BreezeCoral
    endif
    exec 'highlight snipLeadingSpaces guibg=bg guifg=fg'
    exec 'highlight MatchWordCur guibg=bg'
    highlight! link fishVariable BreezeTurquoise
    highlight! link fishInnerVariable BreezeTurquoise

    " ALE plugin
    if g:breezeUndercurls
        highlight! link ALEError BreezeDiagnosticUndercurlError
        highlight! link ALEWarning BreezeDiagnosticUndercurlWarn
        highlight! link ALEInfo BreezeDiagnosticUndercurlInfo
    else
        highlight! link ALEError BreezeDiagnosticUnderlineError
        highlight! link ALEWarning BreezeDiagnosticUnderlineWarn
        highlight! link ALEInfo BreezeDiagnosticUnderlineInfo
    endif
    highlight! link ALEWarningSign BreezeYellow
    highlight! link ALEErrorSign BreezeRed
    highlight! link ALEInfoSign BreezeSky
    if g:breezeVirtualTextColor
        highlight! link ALEVirtualTextError BreezeDiagnosticVirtualTextError
        highlight! link ALEVirtualTextWarning BreezeDiagnosticVirtualTextWarn
        highlight! link ALEVirtualTextInfo BreezeDiagnosticVirtualTextInfo
    else
        highlight! link ALEVirtualTextError BreezeGrey241
        highlight! link ALEVirtualTextWarning BreezeGrey241
        highlight! link ALEVirtualTextInfo BreezeGrey241
    endif

    " GitGutter plugin
    highlight! link GitGutterAdd BreezeEmerald
    highlight! link GitGutterChange BreezeSky
    highlight! link GitGutterChangeDelete BreezeCoral
    highlight! link GitGutterDelete BreezeRed

    " Signify plugin
    highlight! link SignifySignAdd BreezeEmerald
    highlight! link SignifySignChange BreezeSky
    highlight! link SignifySignChangeDelete BreezeCoral
    highlight! link SignifySignDelete BreezeRed

    " FZF plugin
    exec 'highlight fzf1 guifg=' . s:crimson . ' guibg=' . s:grey236
    exec 'highlight fzf2 guifg=' . s:blue . ' guibg=' . s:grey236
    exec 'highlight fzf3 guifg=' . s:emerald . ' guibg=' . s:grey236
    exec 'highlight fzfNormal guifg=' . s:grey249
    exec 'highlight fzfFgPlus guifg=' . s:grey254
    exec 'highlight fzfBorder guifg=' . s:grey236
    exec 'highlight fzfSubstring guifg=' . s:coral
    let g:fzf_colors = {
      \  'fg':      ['fg', 'fzfNormal'],
      \  'bg':      ['bg', 'Normal'],
      \  'hl':      ['fg', 'fzfSubstring'],
      \  'fg+':     ['fg', 'fzfFgPlus'],
      \  'bg+':     ['bg', 'Pmenu'],
      \  'hl+':     ['fg', 'fzfSubstring'],
      \  'info':    ['fg', 'String'],
      \  'border':  ['fg', 'fzfBorder'],
      \  'prompt':  ['fg', 'fzf2'],
      \  'pointer': ['fg', 'Exception'],
      \  'marker':  ['fg', 'StorageClass'],
      \  'spinner': ['fg', 'Type'],
      \  'header':  ['fg', 'CursorLineNr']
      \}

    " mistfly-statusline plugin
    highlight! link MistflyNormal BreezeBlueMode
    highlight! link MistflyInsert BreezeEmeraldMode
    highlight! link MistflyVisual BreezePurpleMode
    highlight! link MistflyCommand BreezeYellowMode
    highlight! link MistflyReplace BreezeCrimsonMode

    " Coc plugin
    highlight! link CocUnusedHighlight BreezeGrey249
    exec 'highlight CocInlayHint guibg=' . s:grey234 . ' guifg=' . s:grey246

    " indentLine plugin
    if !exists('g:indentLine_defaultGroup') && !exists('g:indentLine_color_gui')
        let g:indentLine_color_gui = s:grey235
    endif
endfunction

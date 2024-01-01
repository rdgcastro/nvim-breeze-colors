local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"
-- Background and foreground
local black = "#232629"
local white = "#cfcfc2"
local bg = black
if g.breezeTransparent then
  bg = none
end
-- Variations of charcoal-grey
local grey0 = "#323437"
local grey1 = "#373c4d"
local grey254 = "#e4e4e4"
local grey249 = "#b2b2b2"
local grey247 = "#9e9e9e"
local grey246 = "#949494"
local grey244 = "#808080"
local grey241 = "#626262"
local grey239 = "#4e4e4e"
local grey238 = "#444444"
local grey237 = "#3a3a3a"
local grey236 = "#303030"
local grey235 = "#262626"
local grey234 = "#1c1c1c"
local grey233 = "#121212"
-- Core theme colors
local khaki = "#c2c292"
local yellow = "#e3c78a"
local orange = "#de935f"
local coral = "#f09479"
local orchid = "#e196a2"
local lime = "#85dc85"
local green = "#8cc85f"
local emerald = "#36c692"
local blue = "#80a0ff"
local sky = "#74b2ff"
local turquoise = "#79dac8"
local purple = "#ae81ff"
local cranberry = "#e65e72"
local violet = "#cf87e8"
local crimson = "#ff5189"
local red = "#ff5454"
-- Extra colors
local spring = "#00875f"
local mineral = "#314940"
local bay = "#4d5d8d"

local M = {}

M.palette = {
  black = black,
  white = white,
  bg = bg,
  grey0 = grey0,
  grey1 = grey1,
  grey254 = grey254,
  grey249 = grey249,
  grey247 = grey247,
  grey246 = grey246,
  grey244 = grey244,
  grey241 = grey241,
  grey239 = grey239,
  grey238 = grey238,
  grey237 = grey237,
  grey236 = grey236,
  grey235 = grey235,
  grey234 = grey234,
  grey233 = grey233,
  khaki = khaki,
  yellow = yellow,
  orange = orange,
  coral = coral,
  orchid = orchid,
  lime = lime,
  green = green,
  emerald = emerald,
  blue = blue,
  sky = sky,
  turquoise = turquoise,
  purple = purple,
  cranberry = cranberry,
  violet = violet,
  crimson = crimson,
  red = red,
  spring = spring,
}

M.style = function()
  -------------------------------------------------------------------------
  -- Custom styling groups
  -------------------------------------------------------------------------

  highlight(0, "BreezeVisual", { bg = grey0 })
  highlight(0, "BreezeWhite", { fg = white })
  highlight(0, "BreezeGrey0", { fg = grey0 })
  highlight(0, "BreezeGrey254", { fg = grey254 })
  highlight(0, "BreezeGrey249", { fg = grey249 })
  highlight(0, "BreezeGrey247", { fg = grey247 })
  highlight(0, "BreezeGrey246", { fg = grey246 })
  highlight(0, "BreezeGrey241", { fg = grey241 })
  highlight(0, "BreezeGrey239", { fg = grey239 })
  highlight(0, "BreezeGrey238", { fg = grey238 })
  highlight(0, "BreezeGrey237", { fg = grey237 })
  highlight(0, "BreezeGrey236", { fg = grey236 })
  highlight(0, "BreezeGrey235", { fg = grey235 })
  highlight(0, "BreezeKhaki", { fg = khaki })
  highlight(0, "BreezeYellow", { fg = yellow })
  highlight(0, "BreezeOrange", { fg = orange })
  highlight(0, "BreezeCoral", { fg = coral })
  highlight(0, "BreezeOrchid", { fg = orchid })
  highlight(0, "BreezeLime", { fg = lime })
  highlight(0, "BreezeGreen", { fg = green })
  highlight(0, "BreezeEmerald", { fg = emerald })
  highlight(0, "BreezeBlue", { fg = blue })
  highlight(0, "BreezeSky", { fg = sky })
  highlight(0, "BreezeTurquoise", { fg = turquoise })
  highlight(0, "BreezePurple", { fg = purple })
  highlight(0, "BreezeCranberry", { fg = cranberry })
  highlight(0, "BreezeViolet", { fg = violet })
  highlight(0, "BreezeCrimson", { fg = crimson })
  highlight(0, "BreezeRed", { fg = red })
  -- Misc helpers
  highlight(0, "BreezeUnderline", { underline = true })
  highlight(0, "BreezeNoCombine", { nocombine = true })
  -- Statusline helper colors
  highlight(0, "BreezeBlueMode", { bg = blue, fg = grey234 })
  highlight(0, "BreezeEmeraldMode", { bg = emerald, fg = grey234 })
  highlight(0, "BreezePurpleMode", { bg = purple, fg = grey234 })
  highlight(0, "BreezeCrimsonMode", { bg = crimson, fg = grey234 })
  highlight(0, "BreezeYellowMode", { bg = yellow, fg = grey234 })
  highlight(0, "BreezeTurquoiseMode", { bg = turquoise, fg = grey234 })
  -- Generic line helper colors
  highlight(0, "BreezeCrimsonLine", { bg = grey236, fg = crimson })
  highlight(0, "BreezeEmeraldLine", { bg = grey236, fg = emerald })
  highlight(0, "BreezeGrey246Line", { bg = grey234, fg = grey246 })
  highlight(0, "BreezeYellowLine", { bg = grey234, fg = yellow })
  highlight(0, "BreezeBlueLineActive", { bg = grey238, fg = blue })
  highlight(0, "BreezeRedLineActive", { bg = grey238, fg = red })
  highlight(0, "BreezeWhiteLineActive", { bg = grey238, fg = grey254 })
  highlight(0, "BreezeYellowLineActive", { bg = grey238, fg = yellow })

  -------------------------------------------------------------------------
  -- Standard styling
  -------------------------------------------------------------------------

  -- Specify the colors used by the inbuilt terminal
  if g.breezeTerminalColors then
    g.terminal_color_0 = grey0
    g.terminal_color_1 = red
    g.terminal_color_2 = green
    g.terminal_color_3 = yellow
    g.terminal_color_4 = blue
    g.terminal_color_5 = violet
    g.terminal_color_6 = turquoise
    g.terminal_color_7 = white
    g.terminal_color_8 = grey246
    g.terminal_color_9 = crimson
    g.terminal_color_10 = emerald
    g.terminal_color_11 = khaki
    g.terminal_color_12 = sky
    g.terminal_color_13 = purple
    g.terminal_color_14 = lime
    g.terminal_color_15 = grey254
  end

  -- Background and text
  highlight(0, "Normal", { bg = bg, fg = white })

  -- Color of mode text, -- INSERT --
  highlight(0, "ModeMsg", { fg = grey247 })

  -- Comments
  if g.breezeItalics then
    highlight(0, "Comment", { fg = grey246, italic = true })
  else
    highlight(0, "Comment", { link = "BreezeGrey246" })
  end

  -- Functions
  highlight(0, "Function", { link = "BreezeSky" })

  -- Strings
  highlight(0, "String", { link = "BreezeKhaki" })

  -- Booleans
  highlight(0, "Boolean", { link = "BreezeCranberry" })

  -- Identifiers
  highlight(0, "Identifier", { link = "BreezeTurquoise" })

  -- Color of titles
  highlight(0, "Title", { fg = orange })

  -- const, static
  highlight(0, "StorageClass", { link = "BreezeCoral" })

  -- void, intptr_t
  highlight(0, "Type", { fg = emerald })

  -- Numbers
  highlight(0, "Constant", { link = "BreezeOrange" })

  -- Character constants
  highlight(0, "Character", { link = "BreezePurple" })

  -- Exceptions
  highlight(0, "Exception", { link = "BreezeCrimson" })

  -- ifdef/endif
  highlight(0, "PreProc", { link = "BreezeCranberry" })

  -- case in switch statement
  highlight(0, "Label", { link = "BreezeTurquoise" })

  -- end-of-line '$', end-of-file '~'
  highlight(0, "NonText", { fg = grey241 })

  -- sizeof
  highlight(0, "Operator", { link = "BreezeCranberry" })

  -- for, while
  highlight(0, "Repeat", { link = "BreezeViolet" })

  -- Search
  highlight(0, "Search", { bg = grey1, fg = grey254 })
  highlight(0, "CurSearch", { bg = coral, fg = black })
  highlight(0, "IncSearch", { bg = yellow, fg = black })

  -- '\n' sequences
  highlight(0, "Special", { link = "BreezeCranberry" })

  -- if, else
  highlight(0, "Statement", { fg = violet })

  -- struct, union, enum, typedef
  highlight(0, "Structure", { link = "BreezeBlue" })

  -- Status, split and tab lines
  highlight(0, "StatusLine", { bg = grey236, fg = white })
  highlight(0, "StatusLineNC", { bg = grey236, fg = grey247 })
  highlight(0, "Tabline", { bg = grey236, fg = grey247 })
  highlight(0, "TablineSel", { bg = grey234, fg = blue })
  highlight(0, "TablineSelSymbol", { bg = grey234, fg = emerald })
  highlight(0, "TablineFill", { bg = grey236, fg = grey236 })
  highlight(0, "StatusLineTerm", { bg = grey236, fg = white })
  highlight(0, "StatusLineTermNC", { bg = grey236, fg = grey247 })
  if g.breezeWinSeparator == 0 then
    highlight(0, "VertSplit", { bg = black, fg = black })
  elseif g.breezeWinSeparator == 1 then
    highlight(0, "VertSplit", { bg = grey236, fg = grey236 })
  else
    highlight(0, "VertSplit", { bg = none, fg = grey236 })
  end

  -- Visual selection
  highlight(0, "Visual", { link = "BreezeVisual" })
  highlight(0, "VisualNOS", { bg = grey0, fg = white })

  -- Errors, warnings and whitespace-eol
  highlight(0, "Error", { bg = bg, fg = red })
  highlight(0, "ErrorMsg", { bg = bg, fg = red })
  highlight(0, "WarningMsg", { bg = bg, fg = orange })

  -- Auto-text-completion menu
  highlight(0, "Pmenu", { bg = grey235, fg = white })
  highlight(0, "PmenuSel", { bg = spring, fg = grey254 })
  highlight(0, "PmenuSbar", { bg = grey235 })
  highlight(0, "PmenuThumb", { bg = grey244 })
  highlight(0, "WildMenu", { bg = spring, fg = grey254 })

  -- Spelling errors
  if g.breezeUndercurls then
    highlight(0, "SpellBad", { bg = none, undercurl = true, sp = red })
    highlight(0, "SpellCap", { bg = none, undercurl = true, sp = blue })
    highlight(0, "SpellRare", { bg = none, undercurl = true, sp = yellow })
    highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = sky })
  else
    highlight(0, "SpellBad", { bg = none, fg = red, underline = true, sp = red })
    highlight(0, "SpellCap", { bg = none, fg = blue, underline = true, sp = blue })
    highlight(0, "SpellRare", { bg = none, fg = yellow, underline = true, sp = yellow })
    highlight(0, "SpellLocal", { bg = none, fg = sky, underline = true, sp = sky })
  end

  -- Misc
  highlight(0, "Question", { fg = lime })
  highlight(0, "MoreMsg", { fg = red })
  highlight(0, "LineNr", { bg = bg, fg = grey241 })
  if g.breezeCursorColor then
    highlight(0, "Cursor", { fg = bg, bg = blue })
  else
    highlight(0, "Cursor", { fg = bg, bg = grey247 })
  end
  highlight(0, "lCursor", { fg = bg, bg = grey247 })
  highlight(0, "CursorLineNr", { bg = grey234, fg = blue })
  highlight(0, "CursorColumn", { bg = grey234 })
  highlight(0, "CursorLine", { bg = grey234 })
  highlight(0, "Folded", { bg = grey234, fg = lime })
  highlight(0, "FoldColumn", { bg = grey236, fg = lime })
  highlight(0, "SignColumn", { bg = bg, fg = lime })
  highlight(0, "Todo", { bg = grey235, fg = yellow })
  highlight(0, "SpecialKey", { bg = bg, fg = sky })
  if g.breezeUnderlineMatchParen then
    highlight(0, "MatchParen", { bg = bg, underline = true })
  else
    highlight(0, "MatchParen", { link = "BreezeVisual" })
  end
  highlight(0, "Ignore", { link = "BreezeSky" })
  highlight(0, "Underlined", { fg = emerald })
  highlight(0, "QuickFixLine", { bg = grey237 })
  highlight(0, "Delimiter", { link = "BreezeWhite" })
  highlight(0, "qfFileName", { link = "BreezeEmerald" })

  -- Color column (after line 80)
  highlight(0, "ColorColumn", { bg = grey233 })

  -- Conceal color
  highlight(0, "Conceal", { bg = none, fg = grey249 })

  -- nvim -d
  highlight(0, "DiffAdd", { bg = mineral })
  highlight(0, "DiffChange", { bg = grey236 })
  highlight(0, "DiffDelete", { bg = grey236, fg = grey241 })
  highlight(0, "DiffText", { bg = bay })

  -------------------------------------------------------------------------
  -- Neovim standard styling
  -------------------------------------------------------------------------

  highlight(0, "Whitespace", { fg = grey0 })
  highlight(0, "TermCursor", { bg = grey247, fg = black })
  if g.breezeNormalFloat then
    highlight(0, "NormalFloat", { bg = bg, fg = grey249 })
  else
    highlight(0, "NormalFloat", { bg = grey234, fg = white })
  end
  highlight(0, "FloatBorder", { bg = bg, fg = grey236 })
  highlight(0, "WinBar", { bg = grey235, fg = white })
  highlight(0, "WinBarNC", { bg = grey235, fg = grey247 })
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim check-health
  highlight(0, "healthSuccess", { link = "DiffAdd" })
  highlight(0, "healthHeadingChar", { link = "BreezeBlue" })
  highlight(0, "helpHeader", { link = "BreezeTurquoise" })

  -- Neovim Tree-sitter
  highlight(0, "@annotation", { link = "BreezeViolet" })
  highlight(0, "@attribute", { link = "BreezeSky" })
  highlight(0, "@constant", { link = "BreezeTurquoise" })
  highlight(0, "@constant.builtin", { link = "BreezeGreen" })
  highlight(0, "@constant.macro", { link = "BreezeViolet" })
  highlight(0, "@constructor", { link = "BreezeEmerald" })
  highlight(0, "@danger", { link = "Todo" })
  highlight(0, "@error", { link = "BreezeRed" })
  highlight(0, "@exception", { link = "BreezeViolet" })
  highlight(0, "@function.builtin", { link = "BreezeSky" })
  highlight(0, "@function.call", { link = "BreezeSky" })
  highlight(0, "@function.macro", { link = "BreezeSky" })
  highlight(0, "@include", { link = "BreezeCranberry" })
  highlight(0, "@keyword.operator", { link = "BreezeViolet" })
  highlight(0, "@namespace", { link = "BreezeTurquoise" })
  highlight(0, "@namespace.builtin", { link = "BreezeLime" })
  highlight(0, "@none", {})
  highlight(0, "@parameter", { link = "BreezeOrchid" })
  highlight(0, "@parameter.builtin", { link = "BreezeOrchid" })
  highlight(0, "@property", { link = "BreezeTurquoise" })
  highlight(0, "@punctuation.special", { link = "BreezeCranberry" })
  highlight(0, "@string.regex", { link = "BreezeTurquoise" })
  highlight(0, "@symbol", { link = "BreezePurple" })
  highlight(0, "@tag", { link = "BreezeBlue" })
  highlight(0, "@tag.attribute", { link = "BreezeTurquoise" })
  highlight(0, "@tag.delimiter", { link = "BreezeLime" })
  highlight(0, "@text.danger", { link = "BreezeRed" })
  highlight(0, "@text.diff.add", { link = "DiffAdd" })
  highlight(0, "@text.diff.delete", { link = "DiffDelete" })
  highlight(0, "@text.emphasis", { fg = orchid, italic = true })
  highlight(0, "@text.environment", { link = "BreezeCranberry" })
  highlight(0, "@text.environment.name", { link = "BreezeEmerald" })
  highlight(0, "@text.literal", { link = "String" })
  highlight(0, "@text.math", { link = "BreezeCranberry" })
  highlight(0, "@text.note", { link = "BreezeGrey246" })
  highlight(0, "@text.reference", { link = "BreezeGreen" })
  highlight(0, "@text.strike", { strikethrough = true })
  highlight(0, "@text.strong", { link = "BreezeOrchid" })
  highlight(0, "@text.title", { link = "BreezeViolet" })
  highlight(0, "@text.todo", { link = "Todo" })
  highlight(0, "@text.underline", { underline = true })
  highlight(0, "@text.uri", { link = "BreezePurple" })
  highlight(0, "@text.warning", { link = "BreezeYellow" })
  highlight(0, "@type.builtin", { link = "BreezeEmerald" })
  highlight(0, "@type.qualifier", { link = "BreezeViolet" })
  highlight(0, "@variable", { link = "BreezeWhite" })
  highlight(0, "@variable.builtin", { link = "BreezeLime" })
  -- Language specific Tree-sitter overrides.
  highlight(0, "@field.yaml", { link = "BreezeBlue" })
  highlight(0, "@keyword.gitcommit", { link = "BreezeSky" })
  highlight(0, "@parameter.bash", { link = "BreezeTurquoise" })
  highlight(0, "@punctuation.delimiter.astro", { link = "BreezeCranberry" })
  highlight(0, "@punctuation.delimiter.css", { link = "BreezeCranberry" })
  highlight(0, "@punctuation.delimiter.rust", { link = "BreezeCranberry" })
  highlight(0, "@punctuation.delimiter.scss", { link = "BreezeCranberry" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "BreezeCranberry" })
  highlight(0, "@storageclass.rust", { link = "BreezeViolet" })
  highlight(0, "@text.literal.vimdoc", { link = "BreezeOrchid" })
  highlight(0, "@text.literal.block.vimdoc", { link = "BreezeGreen" })
  highlight(0, "@text.reference.gitcommit", { link = "BreezeBlue" })
  highlight(0, "@text.title.1.markdown", { link = "BreezeEmerald" })
  highlight(0, "@text.title.1.marker.markdown", { link = "BreezeCrimson" })
  highlight(0, "@text.title.1.vimdoc", { link = "BreezeBlue" })
  highlight(0, "@text.title.2.markdown", { link = "BreezeBlue" })
  highlight(0, "@text.title.2.marker.markdown", { link = "BreezeCrimson" })
  highlight(0, "@text.title.2.vimdoc", { link = "BreezeBlue" })
  highlight(0, "@text.title.3.markdown", { link = "BreezeTurquoise" })
  highlight(0, "@text.title.3.marker.markdown", { link = "BreezeCrimson" })
  highlight(0, "@text.title.4.markdown", { link = "BreezeOrange" })
  highlight(0, "@text.title.4.marker.markdown", { link = "BreezeCrimson" })
  highlight(0, "@text.title.5.markdown", { link = "BreezeSky" })
  highlight(0, "@text.title.5.marker.markdown", { link = "BreezeCrimson" })
  highlight(0, "@text.title.6.markdown", { link = "BreezeViolet" })
  highlight(0, "@text.title.6.marker.markdown", { link = "BreezeCrimson" })
  highlight(0, "@text.title.help", { link = "BreezeSky" })
  highlight(0, "@text.title.markdown", { link = "BreezeSky" })
  highlight(0, "@text.uri.gitcommit", { link = "BreezeEmerald" })
  if g.breezeItalics then
    highlight(0, "@text.uri.astro", { fg = violet, italic = true })
    highlight(0, "@text.uri.html", { fg = violet, italic = true })
    highlight(0, "@text.uri.svelte", { fg = violet, italic = true })
    highlight(0, "@text.uri.vue", { fg = violet, italic = true })
  else
    highlight(0, "@text.uri.astro", { link = "BreezeViolet" })
    highlight(0, "@text.uri.html", { link = "BreezeViolet" })
    highlight(0, "@text.uri.svelte", { link = "BreezeViolet" })
    highlight(0, "@text.uri.vue", { link = "BreezeViolet" })
  end
  highlight(0, "@variable.scss", { link = "BreezeTurquoise" })
  highlight(0, "@variable.vim", { link = "BreezeTurquoise" })
  highlight(0, "@variable.builtin.vim", { link = "BreezeEmerald" })

  -- Neovim LSP semantic highlights.
  highlight(0, "@lsp.mod.deprecated", { link = "@constant" })
  highlight(0, "@lsp.mod.readonly", { link = "@constant" })
  highlight(0, "@lsp.mod.typeHint", { link = "@type" })
  highlight(0, "@lsp.type.boolean", { link = "@boolean" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.builtinType", { link = "@type" })
  highlight(0, "@lsp.type.class", { link = "@type" })
  highlight(0, "@lsp.type.enum", { link = "@type" })
  highlight(0, "@lsp.type.enumMember", { link = "@property" })
  highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  highlight(0, "@lsp.type.generic", { link = "@variable" })
  highlight(0, "@lsp.type.interface", { link = "@type" })
  highlight(0, "@lsp.type.keyword", { link = "@keyword" })
  highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
  highlight(0, "@lsp.type.magicFunction", { link = "@function" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.number", { link = "@number" })
  highlight(0, "@lsp.type.operator", { link = "@operator" })
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.property", { link = "@property" })
  highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.string", { link = "@string" })
  highlight(0, "@lsp.type.struct", { link = "@type" })
  highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  highlight(0, "@lsp.type.unresolvedReference", { link = "@error" })
  highlight(0, "@lsp.type.variable", { link = "@variable" })
  highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword" })
  highlight(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
  highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
  highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
  highlight(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.variable.callable", { link = "@function" })
  highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  highlight(0, "@lsp.typemod.variable.global", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  highlight(0, "@lsp.typemod.variable.readonly", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })
  -- Language specific LSP semantic overrides.
  highlight(0, "@lsp.type.macro.rust", { link = "@function" })
  highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
  highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "BreezeRed" })
  highlight(0, "DiagnosticWarn", { link = "BreezeYellow" })
  highlight(0, "DiagnosticInfo", { link = "BreezeSky" })
  highlight(0, "DiagnosticHint", { link = "BreezeWhite" })
  highlight(0, "DiagnosticOk", { link = "BreezeEmerald" })
  if g.breezeUndercurls then
    highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = sky })
    highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = white })
    highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = emerald })
  else
    highlight(0, "DiagnosticUnderlineError", { underline = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = sky })
    highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = white })
    highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = emerald })
  end
  if g.breezeVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { bg = grey234, fg = red })
    highlight(0, "DiagnosticVirtualTextWarn", { bg = grey234, fg = yellow })
    highlight(0, "DiagnosticVirtualTextInfo", { bg = grey234, fg = sky })
    highlight(0, "DiagnosticVirtualTextHint", { bg = grey234, fg = white })
    highlight(0, "DiagnosticVirtualTextOk", { bg = grey234, fg = emerald })
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "BreezeGrey241" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "BreezeGrey241" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "BreezeGrey241" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "BreezeGrey241" })
    highlight(0, "DiagnosticVirtualTextOk", { link = "BreezeGrey241" })
  end
  highlight(0, "DiagnosticSignError", { link = "BreezeRed" })
  highlight(0, "DiagnosticSignWarn", { link = "BreezeYellow" })
  highlight(0, "DiagnosticSignInfo", { link = "BreezeSky" })
  highlight(0, "DiagnosticSignHint", { link = "BreezeWhite" })
  highlight(0, "DiagnosticSignOk", { link = "BreezeEmerald" })
  highlight(0, "DiagnosticFloatingError", { link = "BreezeRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "BreezeYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "BreezeSky" })
  highlight(0, "DiagnosticFloatingHint", { link = "BreezeWhite" })
  highlight(0, "DiagnosticFloatingOk", { link = "BreezeEmerald" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "BreezeGrey241" })
  highlight(0, "LspCodeLensSeparator", { link = "BreezeGrey241" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspInlayHint", { bg = grey234, fg = grey246 })
  highlight(0, "LspReferenceText", { link = "BreezeVisual" })
  highlight(0, "LspReferenceRead", { link = "BreezeVisual" })
  highlight(0, "LspReferenceWrite", { link = "BreezeVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = grey236 })

  -------------------------------------------------------------------------
  -- Legacy language styling
  -------------------------------------------------------------------------

  -- Help
  highlight(0, "helpCommand", { link = "BreezeOrchid" })
  highlight(0, "helpExample", { link = "BreezeGreen" })
  highlight(0, "helpHeadline", { link = "BreezeBlue" })
  highlight(0, "helpHyperTextEntry", { link = "BreezeTurquoise" })
  highlight(0, "helpSectionDelim", { link = "BreezeBlue" })

  -- Markdown, 'tpope/vim-markdown' plugin
  highlight(0, "markdownBold", { link = "BreezeYellow" })
  highlight(0, "markdownCode", { link = "BreezeKhaki" })
  highlight(0, "markdownCodeDelimiter", { link = "BreezeKhaki" })
  highlight(0, "markdownError", { link = "NormalNC" })
  highlight(0, "markdownH1", { link = "BreezeBlue" })
  highlight(0, "markdownH2", { link = "BreezeBlue" })
  highlight(0, "markdownHeadingRule", { link = "BreezeCranberry" })
  highlight(0, "markdownItalic", { link = "BreezeOrchid" })
  highlight(0, "markdownUrl", { link = "BreezePurple" })

  -- Markdown, 'plasticboy/vim-markdown' plugin
  highlight(0, "mkdDelimiter", { link = "BreezeWhite" })
  highlight(0, "mkdLineBreak", { link = "NormalNC" })
  highlight(0, "mkdListItem", { link = "BreezeBlue" })
  highlight(0, "mkdURL", { link = "BreezePurple" })

  -- Shell
  highlight(0, "shAlias", { link = "BreezeTurquoise" })
  highlight(0, "shCommandSub", { link = "BreezeWhite" })
  highlight(0, "shCtrlSeq", { link = "BreezeKhaki" })
  highlight(0, "shLoop", { link = "BreezeViolet" })
  highlight(0, "shRange", { link = "BreezeWhite" })
  highlight(0, "shSetList", { link = "BreezeTurquoise" })
  highlight(0, "shShellVariables", { link = "BreezeTurquoise" })
  highlight(0, "shVariable", { link = "BreezeTurquoise" })

  -- XML
  highlight(0, "xmlAttrib", { link = "BreezeLime" })
  highlight(0, "xmlEndTag", { link = "BreezeBlue" })
  highlight(0, "xmlTag", { link = "BreezeLime" })
  highlight(0, "xmlTagName", { link = "BreezeBlue" })

  -------------------------------------------------------------------------
  -- Legacy plugin styling
  -------------------------------------------------------------------------

  -- Git commits
  highlight(0, "gitCommitBranch", { link = "BreezeSky" })
  highlight(0, "gitCommitDiscardedFile", { link = "BreezeCrimson" })
  highlight(0, "gitCommitDiscardedType", { link = "BreezeSky" })
  highlight(0, "gitCommitHeader", { link = "BreezePurple" })
  highlight(0, "gitCommitSelectedFile", { link = "BreezeEmerald" })
  highlight(0, "gitCommitSelectedType", { link = "BreezeSky" })
  highlight(0, "gitCommitUntrackedFile", { link = "BreezeCranberry" })
  highlight(0, "gitEmail", { link = "BreezeBlue" })

  -- Git commit diffs
  highlight(0, "diffAdded", { link = "BreezeGreen" })
  highlight(0, "diffChanged", { link = "BreezeCrimson" })
  highlight(0, "diffIndexLine", { link = "BreezeCrimson" })
  highlight(0, "diffLine", { link = "BreezeSky" })
  highlight(0, "diffRemoved", { link = "BreezeRed" })
  highlight(0, "diffSubname", { link = "BreezeSky" })

  -- Tagbar plugin
  highlight(0, "TagbarFoldIcon", { link = "BreezeGrey247" })
  highlight(0, "TagbarVisibilityPublic", { link = "BreezeLime" })
  highlight(0, "TagbarVisibilityProtected", { link = "BreezeLime" })
  highlight(0, "TagbarVisibilityPrivate", { link = "BreezeLime" })
  highlight(0, "TagbarKind", { link = "BreezeEmerald" })

  -- fern.vim plugin
  highlight(0, "FernBranchSymbol", { link = "BreezeGrey246" })
  highlight(0, "FernLeafSymbol", { link = "BreezeBlue" })
  highlight(0, "FernLeaderSymbol", { link = "BreezeGrey237" })
  highlight(0, "FernBranchText", { link = "BreezeBlue" })
  highlight(0, "FernMarkedLine", { link = "BreezeVisual" })
  highlight(0, "FernMarkedText", { link = "BreezeCrimson" })
  highlight(0, "FernRootSymbol", { link = "BreezePurple" })
  highlight(0, "FernRootText", { link = "BreezePurple" })

  -- fern-git-status.vim plugin
  highlight(0, "FernGitStatusBracket", { link = "BreezeGrey246" })
  highlight(0, "FernGitStatusIndex", { link = "BreezeEmerald" })
  highlight(0, "FernGitStatusWorktree", { link = "BreezeCrimson" })

  -- Glyph palette
  highlight(0, "GlyphPalette1", { link = "BreezeCranberry" })
  highlight(0, "GlyphPalette2", { link = "BreezeEmerald" })
  highlight(0, "GlyphPalette3", { link = "BreezeYellow" })
  highlight(0, "GlyphPalette4", { link = "BreezeBlue" })
  highlight(0, "GlyphPalette6", { link = "BreezeTurquoise" })
  highlight(0, "GlyphPalette7", { link = "BreezeWhite" })
  highlight(0, "GlyphPalette9", { link = "BreezeCrimson" })

  -- Misc items
  highlight(0, "bufExplorerHelp", { link = "BreezeGrey247" })
  highlight(0, "bufExplorerSortBy", { link = "BreezeGrey247" })
  highlight(0, "CleverFDefaultLabel", { link = "BreezeCrimson" })
  highlight(0, "CtrlPMatch", { link = "BreezeCoral" })
  highlight(0, "Directory", { link = "BreezeBlue" })
  highlight(0, "erubyDelimiter", { link = "BreezeCrimson" })
  highlight(0, "jsonKeyword", { link = "BreezeSky" })
  highlight(0, "jsonQuote", { link = "BreezeWhite" })
  highlight(0, "netrwClassify", { link = "BreezeCranberry" })
  highlight(0, "netrwDir", { link = "BreezeSky" })
  highlight(0, "netrwExe", { link = "BreezeKhaki" })
  highlight(0, "tagName", { link = "BreezeTurquoise" })
  highlight(0, "Cheat40Header", { link = "BreezeBlue" })
  highlight(0, "yamlBlockMappingKey", { link = "BreezeSky" })
  highlight(0, "yamlFlowMappingKey", { link = "BreezeSky" })
  if g.breezeUnderlineMatchParen then
    highlight(0, "MatchWord", { underline = true, sp = coral })
  else
    highlight(0, "MatchWord", { link = "BreezeCoral" })
  end
  highlight(0, "snipLeadingSpaces", { bg = bg, fg = white })
  highlight(0, "MatchWordCur", { bg = bg })
  highlight(0, "fishVariable", { link = "BreezeTurquoise" })
  highlight(0, "fishInnerVariable", { link = "BreezeTurquoise" })

  -- FZF plugin
  highlight(0, "fzf1", { fg = crimson, bg = grey236 })
  highlight(0, "fzf2", { fg = blue, bg = grey236 })
  highlight(0, "fzf3", { fg = emerald, bg = grey236 })
  highlight(0, "fzfNormal", { fg = grey249 })
  highlight(0, "fzfFgPlus", { fg = grey254 })
  highlight(0, "fzfBorder", { fg = grey236 })
  highlight(0, "fzfSubstring", { fg = coral })
  g.fzf_colors = {
    ["fg"] = { "fg", "fzfNormal" },
    ["bg"] = { "bg", "Normal" },
    ["hl"] = { "fg", "fzfSubstring" },
    ["fg+"] = { "fg", "fzfFgPlus" },
    ["bg+"] = { "bg", "Pmenu" },
    ["hl+"] = { "fg", "fzfSubstring" },
    ["info"] = { "fg", "String" },
    ["border"] = { "fg", "fzfBorder" },
    ["prompt"] = { "fg", "fzf2" },
    ["pointer"] = { "fg", "Exception" },
    ["marker"] = { "fg", "StorageClass" },
    ["spinner"] = { "fg", "Type" },
    ["header"] = { "fg", "CursorLineNr" },
  }

  -- mistfly-statusline plugin
  highlight(0, "MistflyNormal", { link = "BreezeBlueMode" })
  highlight(0, "MistflyInsert", { link = "BreezeEmeraldMode" })
  highlight(0, "MistflyVisual", { link = "BreezePurpleMode" })
  highlight(0, "MistflyCommand", { link = "BreezeYellowMode" })
  highlight(0, "MistflyReplace", { link = "BreezeCrimsonMode" })

  -- Coc plugin
  highlight(0, "CocUnusedHighlight", { link = "BreezeGrey249" })
  highlight(0, "CocInlayHint", { link = "LspInlayHint" })

  -------------------------------------------------------------------------
  -- Neovim plugin styling
  -------------------------------------------------------------------------

  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "BreezeGrey246" })
  highlight(0, "NvimTreeFolderName", { link = "BreezeBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "BreezeGrey237" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "BreezeBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "BreezePurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "BreezeYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { bg = grey235 })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  if g.breezeTransparent ~= true and g.moonflyNormalFloat ~= true then
    highlight(0, "NormalFloat", { bg = bg, fg = grey249 })
  end
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeCursorLine", { bg = grey235 })
  highlight(0, "NeoTreeDimText", { link = "BreezeGrey239" })
  highlight(0, "NeoTreeDirectoryIcon", { link = "BreezeGrey246" })
  highlight(0, "NeoTreeDotfile", { link = "BreezeGrey246" })
  highlight(0, "NeoTreeFloatTitle", { bg = grey236, fg = white })
  highlight(0, "NeoTreeFilterTerm", { link = "BreezeBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "BreezeGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "BreezeCrimson" })
  highlight(0, "NeoTreeGitModified", { link = "BreezeTurquoise" })
  highlight(0, "NeoTreeGitUntracked", { link = "BreezeOrchid" })
  highlight(0, "NeoTreeIndentMarker", { link = "BreezeGrey237" })
  highlight(0, "NeoTreeMessage", { link = "BreezeGrey247" })
  highlight(0, "NeoTreeModified", { link = "BreezeYellow" })
  highlight(0, "NeoTreeRootName", { link = "BreezePurple" })
  highlight(0, "NeoTreeTitleBar", { bg = grey236, fg = white })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "FloatBorder" })
  highlight(0, "TelescopeMatching", { link = "BreezeCoral" })
  highlight(0, "TelescopeMultiIcon", { link = "BreezeCrimson" })
  highlight(0, "TelescopeMultiSelection", { link = "BreezeEmerald" })
  highlight(0, "TelescopeNormal", { link = "BreezeGrey249" })
  highlight(0, "TelescopePreviewDate", { link = "BreezeGrey246" })
  highlight(0, "TelescopePreviewGroup", { link = "BreezeGrey246" })
  highlight(0, "TelescopePreviewLink", { link = "BreezeTurquoise" })
  highlight(0, "TelescopePreviewMatch", { link = "BreezeVisual" })
  highlight(0, "TelescopePreviewRead", { link = "BreezeOrange" })
  highlight(0, "TelescopePreviewSize", { link = "BreezeEmerald" })
  highlight(0, "TelescopePreviewUser", { link = "BreezeGrey246" })
  highlight(0, "TelescopePromptPrefix", { link = "BreezeBlue" })
  highlight(0, "TelescopeResultsDiffAdd", { link = "BreezeGreen" })
  highlight(0, "TelescopeResultsDiffChange", { link = "BreezeRed" })
  highlight(0, "TelescopeResultsDiffDelete", { link = "BreezeCrimsonLine" })
  highlight(0, "TelescopeResultsSpecialComment", { link = "BreezeGrey241" })
  highlight(0, "TelescopeSelectionCaret", { link = "BreezeCrimson" })
  highlight(0, "TelescopeTitle", { link = "BreezeGrey241" })
  highlight(0, "TelescopeSelection", { bg = grey0, fg = grey254 })

  -- gitsigns.nvim plugin
  --   sign column
  highlight(0, "GitSignsAdd", { link = "BreezeEmerald" })
  highlight(0, "GitSignsChange", { link = "BreezeSky" })
  highlight(0, "GitSignsChangeDelete", { link = "BreezeCoral" })
  highlight(0, "GitSignsDelete", { link = "BreezeRed" })
  highlight(0, "GitSignsUntracked", { link = "BreezeGrey241" })
  --   line highlights
  highlight(0, "GitSignsAddLn", { bg = grey235 })
  highlight(0, "GitSignsChangeLn", { bg = grey234 })
  --   word diff
  highlight(0, "GitSignsAddLnInline", { bg = grey1 })
  highlight(0, "GitSignsChangeLnInline", { bg = grey1 })
  --   word diff in preview
  highlight(0, "GitSignsAddInline", { bg = green, fg = black })
  highlight(0, "GitSignsChangeInline", { bg = yellow, fg = black })
  highlight(0, "GitSignsDeleteInline", { bg = red, fg = black })
  --   misc
  highlight(0, "GitSignsAddPreview", { link = "BreezeEmeraldLine" })
  highlight(0, "GitSignsDeletePreview", { link = "BreezeCrimsonLine" })
  highlight(0, "GitSignsDeleteVirtLn", { link = "BreezeCrimsonLine" })

  -- Hop plugin
  highlight(0, "HopCursor", { link = "IncSearch" })
  highlight(0, "HopNextKey", { link = "BreezeYellow" })
  highlight(0, "HopNextKey1", { link = "BreezeBlue" })
  highlight(0, "HopNextKey2", { link = "BreezeCrimson" })
  highlight(0, "HopUnmatched", { link = "BreezeGrey247" })

  -- Barbar plugin
  highlight(0, "BufferCurrent", { link = "BreezeWhiteLineActive" })
  highlight(0, "BufferCurrentIndex", { link = "BreezeWhiteLineActive" })
  highlight(0, "BufferCurrentMod", { link = "BreezeYellowLineActive" })
  highlight(0, "BufferCurrentSign", { link = "BreezeBlueLineActive" })
  highlight(0, "BufferCurrentERROR", { link = "BreezeRedLineActive" })
  highlight(0, "BufferCurrentWARN", { link = "BreezeYellowLineActive" })
  highlight(0, "BufferCurrentINFO", { link = "BreezeBlueLineActive" })
  highlight(0, "BufferCurrentHINT", { link = "BreezeWhiteLineActive" })
  highlight(0, "BufferTabpages", { bg = grey236, fg = blue })
  highlight(0, "BufferVisible", { link = "BreezeGrey246Line" })
  highlight(0, "BufferVisibleIndex", { link = "BreezeGrey246Line" })
  highlight(0, "BufferVisibleMod", { link = "BreezeYellowLine" })
  highlight(0, "BufferVisibleSign", { link = "BreezeGrey246Line" })
  highlight(0, "BufferVisibleERROR", { bg = grey234, fg = red })
  highlight(0, "BufferVisibleWARN", { bg = grey234, fg = yellow })
  highlight(0, "BufferVisibleINFO", { bg = grey234, fg = blue })
  highlight(0, "BufferVisibleHINT", { bg = grey234, fg = white })
  highlight(0, "BufferInactive", { bg = grey236, fg = grey246 })
  highlight(0, "BufferInactiveMod", { bg = grey236, fg = yellow })
  highlight(0, "BufferInactiveSign", { bg = grey236, fg = grey247 })
  highlight(0, "BufferInactiveERROR", { bg = grey236, fg = red })
  highlight(0, "BufferInactiveWARN", { bg = grey236, fg = yellow })
  highlight(0, "BufferInactiveINFO", { bg = grey236, fg = blue })
  highlight(0, "BufferInactiveHINT", { bg = grey236, fg = white })
  highlight(0, "BufferAlternate", { link = "BufferCurrent" })
  highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
  highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
  highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
  highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
  highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
  highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
  highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

  -- Bufferline plugin
  highlight(0, "BufferLineTabSelected", { fg = blue })
  highlight(0, "BufferLineIndicatorSelected", { fg = blue })

  -- nvim-cmp plugin
  highlight(0, "CmpItemAbbrMatch", { link = "BreezeYellow" })
  highlight(0, "CmpItemAbbrMatchFuzzy", { link = "BreezeCoral" })
  highlight(0, "CmpItemKind", { link = "BreezeWhite" })
  highlight(0, "CmpItemKindClass", { link = "BreezeEmerald" })
  highlight(0, "CmpItemKindColor", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindConstant", { link = "BreezePurple" })
  highlight(0, "CmpItemKindConstructor", { link = "BreezeSky" })
  highlight(0, "CmpItemKindEnum", { link = "BreezeViolet" })
  highlight(0, "CmpItemKindEnumMember", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindEvent", { link = "BreezeViolet" })
  highlight(0, "CmpItemKindField", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindFile", { link = "BreezeBlue" })
  highlight(0, "CmpItemKindFolder", { link = "BreezeBlue" })
  highlight(0, "CmpItemKindFunction", { link = "BreezeSky" })
  highlight(0, "CmpItemKindInterface", { link = "BreezeEmerald" })
  highlight(0, "CmpItemKindKeyword", { link = "BreezeViolet" })
  highlight(0, "CmpItemKindMethod", { link = "BreezeSky" })
  highlight(0, "CmpItemKindModule", { link = "BreezeEmerald" })
  highlight(0, "CmpItemKindOperator", { link = "BreezeViolet" })
  highlight(0, "CmpItemKindProperty", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindReference", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindSnippet", { link = "BreezeGreen" })
  highlight(0, "CmpItemKindStruct", { link = "BreezeEmerald" })
  highlight(0, "CmpItemKindText", { link = "BreezeGrey249" })
  highlight(0, "CmpItemKindTypeParameter", { link = "BreezeEmerald" })
  highlight(0, "CmpItemKindUnit", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindValue", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemKindVariable", { link = "BreezeTurquoise" })
  highlight(0, "CmpItemMenu", { link = "BreezeGrey247" })

  -- Indent Blankline plugin v3 & later
  highlight(0, "IblIndent", { fg = grey235, nocombine = true })
  highlight(0, "IblScope", { fg = violet, nocombine = true })
  highlight(0, "IblWhitespace", { fg = grey235, nocombine = true })
  -- Indent Blankline plugin v2 & earlier
  highlight(0, "IndentBlanklineChar", { link = "IblIndent" })
  highlight(0, "IndentBlanklineSpaceChar", { link = "IblWhitespace" })
  highlight(0, "IndentBlanklineSpaceCharBlankline", { link = "IblWhitespace" })

  -- Mini.nvim plugin
  highlight(0, "MiniCompletionActiveParameter", { link = "BreezeVisual" })
  highlight(0, "MiniCursorword", { link = "BreezeUnderline" })
  highlight(0, "MiniCursorwordCurrent", { link = "BreezeUnderline" })
  highlight(0, "MiniIndentscopePrefix", { link = "BreezeNoCombine" })
  highlight(0, "MiniIndentscopeSymbol", { link = "BreezeWhite" })
  highlight(0, "MiniJump", { link = "SpellRare" })
  highlight(0, "MiniStarterCurrent", { link = "BreezeNoCombine" })
  highlight(0, "MiniStarterFooter", { link = "Title" })
  highlight(0, "MiniStarterHeader", { link = "BreezeViolet" })
  highlight(0, "MiniStarterInactive", { link = "Comment" })
  highlight(0, "MiniStarterItem", { link = "Normal" })
  highlight(0, "MiniStarterItemBullet", { link = "Delimiter" })
  highlight(0, "MiniStarterItemPrefix", { link = "BreezeYellow" })
  highlight(0, "MiniStarterQuery", { link = "BreezeSky" })
  highlight(0, "MiniStarterSection", { link = "BreezeCrimson" })
  highlight(0, "MiniStatuslineModeCommand", { link = "BreezeYellowMode" })
  highlight(0, "MiniStatuslineModeInsert", { link = "BreezeEmeraldMode" })
  highlight(0, "MiniStatuslineModeNormal", { link = "BreezeBlueMode" })
  highlight(0, "MiniStatuslineModeOther", { link = "BreezeTurquoiseMode" })
  highlight(0, "MiniStatuslineModeReplace", { link = "BreezeCrimsonMode" })
  highlight(0, "MiniStatuslineModeVisual", { link = "BreezePurpleMode" })
  highlight(0, "MiniSurround", { link = "IncSearch" })
  highlight(0, "MiniTablineCurrent", { link = "BreezeWhiteLineActive" })
  highlight(0, "MiniTablineFill", { link = "TabLineFill" })
  highlight(0, "MiniTablineModifiedCurrent", { link = "BreezeYellowLineActive" })
  highlight(0, "MiniTablineModifiedVisible", { link = "BreezeYellowLine" })
  highlight(0, "MiniTablineTabpagesection", { link = "BreezeBlueMode" })
  highlight(0, "MiniTablineVisible", { link = "BreezeGrey246Line" })
  highlight(0, "MiniTestEmphasis", { link = "BreezeUnderline" })
  highlight(0, "MiniTestFail", { link = "BreezeRed" })
  highlight(0, "MiniTestPass", { link = "BreezeGreen" })
  highlight(0, "MiniTrailspace", { link = "BreezeCrimsonMode" })
  highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
  highlight(0, "MiniStatuslineDevinfo", { bg = grey241, fg = white })
  highlight(0, "MiniStatuslineFileinfo", { bg = grey241, fg = white })
  highlight(0, "MiniStatuslineFilename", { bg = grey236, fg = grey247 })
  highlight(0, "MiniStatuslineInactive", { bg = grey236, fg = grey247 })
  highlight(0, "MiniTablineHidden", { bg = grey236, fg = grey246 })
  highlight(0, "MiniTablineModifiedHidden", { bg = grey236, fg = yellow })

  -- Dashboard plugin
  highlight(0, "DashboardCenter", { link = "BreezeViolet" })
  highlight(0, "DashboardFooter", { link = "BreezeCoral" })
  highlight(0, "DashboardHeader", { link = "BreezeBlue" })
  highlight(0, "DashboardShortCut", { link = "BreezeTurquoise" })

  -- nvim-notify plugin
  highlight(0, "NotifyERRORBorder", { link = "FloatBorder" })
  highlight(0, "NotifyWARNBorder", { link = "FloatBorder" })
  highlight(0, "NotifyINFOBorder", { link = "FloatBorder" })
  highlight(0, "NotifyDEBUGBorder", { link = "FloatBorder" })
  highlight(0, "NotifyTRACEBorder", { link = "FloatBorder" })
  highlight(0, "NotifyERRORIcon", { link = "BreezeRed" })
  highlight(0, "NotifyWARNIcon", { link = "BreezeYellow" })
  highlight(0, "NotifyINFOIcon", { link = "BreezeBlue" })
  highlight(0, "NotifyDEBUGIcon", { link = "BreezeGrey246" })
  highlight(0, "NotifyTRACEIcon", { link = "BreezePurple" })
  highlight(0, "NotifyERRORTitle", { link = "BreezeRed" })
  highlight(0, "NotifyWARNTitle", { link = "BreezeYellow" })
  highlight(0, "NotifyINFOTitle", { link = "BreezeBlue" })
  highlight(0, "NotifyDEBUGTitle", { link = "BreezeGrey246" })
  highlight(0, "NotifyTRACETitle", { link = "BreezePurple" })

  -- lazy.nvim plugin
  highlight(0, "LazyCommit", { link = "BreezeEmerald" })
  highlight(0, "LazyCommitType", { link = "BreezeViolet" })
  highlight(0, "LazyH1", { link = "BreezeBlueMode" })
  highlight(0, "LazyProgressDone", { link = "BreezeBlue" })
  highlight(0, "LazyProgressTodo", { link = "BreezeGrey0" })
  highlight(0, "LazyReasonCmd", { link = "BreezeGreen" })
  highlight(0, "LazyReasonPlugin", { link = "BreezeOrchid" })
  highlight(0, "LazyReasonRuntime", { link = "BreezeViolet" })
  highlight(0, "LazySpecial", { link = "BreezeBlue" })
  highlight(0, "LazyButton", { bg = grey235, fg = white })
  highlight(0, "LazyButtonActive", { bg = grey239, fg = grey254 })
  if g.breezeNormalFloat ~= true then
    highlight(0, "LazyNormal", { bg = grey233, fg = white })
  end

  -- mason.nvim plugin
  highlight(0, "MasonError", { link = "BreezeRed" })
  highlight(0, "MasonHeader", { link = "BreezeBlueMode" })
  highlight(0, "MasonHeaderSecondary", { link = "BreezeBlueMode" })
  highlight(0, "MasonHeading", { link = "BreezeGrey254" })
  highlight(0, "MasonHighlight", { link = "BreezeBlue" })
  highlight(0, "MasonHighlightBlock", { link = "BreezeBlueMode" })
  highlight(0, "MasonHighlightBlockBold", { link = "BreezeBlueMode" })
  highlight(0, "MasonHighlightBlockBoldSecondary", { link = "BreezeEmeraldMode" })
  highlight(0, "MasonHighlightBlockSecondary", { link = "BreezeEmeraldMode" })
  highlight(0, "MasonHighlightSecondary", { link = "BreezeEmerald" })
  highlight(0, "MasonLink", { link = "BreezePurple" })
  highlight(0, "MasonMuted", { link = "BreezeGrey241" })
  highlight(0, "MasonMutedBlock", { bg = grey235, fg = white })
  highlight(0, "MasonMutedBlockBold", { bg = grey235, fg = grey254 })

  -- linefly plugin
  highlight(0, "LineflyNormal", { link = "BreezeBlueMode" })
  highlight(0, "LineflyInsert", { link = "BreezeEmeraldMode" })
  highlight(0, "LineflyVisual", { link = "BreezePurpleMode" })
  highlight(0, "LineflyCommand", { link = "BreezeYellowMode" })
  highlight(0, "LineflyReplace", { link = "BreezeCrimsonMode" })

  -- lspsaga.nvim plugin
  highlight(0, "TitleString", { link = "BreezeBlue" })
  highlight(0, "TitleIcon", { link = "BreezeBlue" })
  highlight(0, "TitleSymbol", { link = "BreezeBlue" })
  highlight(0, "SagaBorder", { link = "FloatBorder" })
  highlight(0, "SagaNormal", { link = "Normal" })
  highlight(0, "SagaExpand", { link = "BreezeCranberry" })
  highlight(0, "SagaCollapse", { link = "BreezeCranberry" })
  highlight(0, "SagaBeacon", { link = "BreezePurpleMode" })
  highlight(0, "ActionPreviewTitle", { link = "BreezeBlue" })
  highlight(0, "CodeActionText", { link = "BreezeYellow" })
  highlight(0, "CodeActionConceal", { link = "BreezeGreen" })
  highlight(0, "FinderSelection", { link = "BreezeTurquoise" })
  highlight(0, "FinderFName", { link = "BreezeWhite" })
  highlight(0, "FinderCode", { link = "BreezeWhite" })
  highlight(0, "FinderIcon", { link = "BreezeTurquoise" })
  highlight(0, "FinderType", { link = "BreezeViolet" })
  highlight(0, "FinderSpinnerTitle", { link = "BreezePurple" })
  highlight(0, "FinderSpinner", { link = "BreezePurple" })
  highlight(0, "RenameNormal", { link = "BreezeOrange" })
  highlight(0, "DiagnosticSource", { link = "BreezeGrey241" })
  highlight(0, "DiagnosticText", { link = "BreezeRed" })
  highlight(0, "CallHierarchyIcon", { link = "BreezeViolet" })
  highlight(0, "CallHierarchyTitle", { link = "BreezeCranberry" })
  highlight(0, "SagaShadow", { link = "Normal" })
  highlight(0, "OutlineIndent", { link = "BreezePurple" })

  -- Noice plugin
  highlight(0, "NoiceCmdlinePopup", { link = "BreezeGrey244" })
  highlight(0, "NoiceCmdlinePopupBorder", { link = "BreezeGrey238" })
  highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "BreezeGrey238" })
  highlight(0, "NoiceCmdlinePrompt", { link = "BreezeBlue" })
  highlight(0, "NoiceCompletionItemKindDefault", { link = "BreezeTurquoise" })
  highlight(0, "NoiceConfirmBorder", { link = "BreezeBlue" })
  highlight(0, "NoiceFormatTitle", { link = "BreezeCranberry" })

  -- nvim-navic plugin
  highlight(0, "NavicText", { bg = grey236, fg = grey249 })
  highlight(0, "NavicSeparator", { bg = grey236, fg = white })
  highlight(0, "NavicIconsOperator", { bg = grey236, fg = cranberry })
  highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
  highlight(0, "NavicIconsClass", { bg = grey236, fg = emerald })
  highlight(0, "NavicIconsConstant", { bg = grey236, fg = orange })
  highlight(0, "NavicIconsConstructor", { bg = grey236, fg = sky })
  highlight(0, "NavicIconsEnum", { bg = grey236, fg = violet })
  highlight(0, "NavicIconsEnumMember", { bg = grey236, fg = turquoise })
  highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsFile", { bg = grey236, fg = blue })
  highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
  highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNull", { bg = grey236, fg = green })
  highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsString", { bg = grey236, fg = khaki })
  highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
  highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })

  -- Rainbow Delimiters plugin
  highlight(0, "RainbowDelimiterRed", { link = "BreezeRed" })
  highlight(0, "RainbowDelimiterYellow", { link = "BreezeYellow" })
  highlight(0, "RainbowDelimiterBlue", { link = "BreezeBlue" })
  highlight(0, "RainbowDelimiterOrange", { link = "BreezeOrange" })
  highlight(0, "RainbowDelimiterGreen", { link = "BreezeGreen" })
  highlight(0, "RainbowDelimiterViolet", { link = "BreezeViolet" })
  highlight(0, "RainbowDelimiterCyan", { link = "BreezeTurquoise" })

  -- Neogit plugin
  highlight(0, "NeogitBranch", { link = "BreezeSky" })
  highlight(0, "NeogitDiffAddHighlight", { link = "BreezeEmeraldLine" })
  highlight(0, "NeogitDiffContextHighlight", { bg = grey234 })
  highlight(0, "NeogitDiffDeleteHighlight", { link = "BreezeCrimsonLine" })
  highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
  highlight(0, "NeogitHunkHeaderHighlight", { link = "BreezeBlueLineActive" })
  highlight(0, "NeogitRemote", { link = "BreezePurple" })

  -- nvim-window-picker plugin
  highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
  highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
  highlight(0, "WindowPickerWinBar", { link = "WinBar" })
  highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })

  -- nvim-dap-ui
  highlight(0, "DapUIBreakpointsCurrentLine", { bg = grey234, fg = green })
  highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
  highlight(0, "DapUIBreakpointsInfo", { link = "BreezeSky" })
  highlight(0, "DapUIBreakpointsPath", { link = "BreezeTurquoise" })
  highlight(0, "DapUIDecoration", { link = "BreezeBlue" })
  highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
  highlight(0, "DapUILineNumber", { link = "Number" })
  highlight(0, "DapUIModifiedValue", { fg = white, underline = true })
  highlight(0, "DapUIPlayPause", { link = "BreezeGreen" })
  highlight(0, "DapUIRestart", { link = "BreezeGreen" })
  highlight(0, "DapUIScope", { link = "BreezeSky" })
  highlight(0, "DapUISource", { link = "BreezeViolet" })
  highlight(0, "DapUIStepBack", { link = "BreezeTurquoise" })
  highlight(0, "DapUIStepInto", { link = "BreezeTurquoise" })
  highlight(0, "DapUIStepOut", { link = "BreezeTurquoise" })
  highlight(0, "DapUIStepOver", { link = "BreezeTurquoise" })
  highlight(0, "DapUIStop", { link = "BreezeRed" })
  highlight(0, "DapUIStoppedThread", { link = "BreezeTurquoise" })
  highlight(0, "DapUIThread", { link = "BreezeGreen" })
  highlight(0, "DapUIType", { link = "Type" })
  highlight(0, "DapUIUnavailable", { link = "BreezeGrey241" })
  highlight(0, "DapUIWatchesEmpty", { link = "BreezeRed" })
  highlight(0, "DapUIWatchesError", { link = "BreezeRed" })
  highlight(0, "DapUIWatchesValue", { link = "BreezeGreen" })
  highlight(0, "DapUIWinSelect", { link = "BreezeBlue" })
end

return M

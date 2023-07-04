local Color, c, Group, g, s = require("colorbuddy").setup()
local v = vim

v.g.colors_name = "sitrusbuddy"

local palette = {
	white = { gui = "#eaeaea", cterm = 250 },
	lighgray = { gui = "#919191", cterm = 246 },
	gray = { gui = "#4c5356", cterm = 238 },
	darkgray = { gui = "#34373a", cterm = 095 },
	dark = { gui = "#1c1c1c", cterm = 243 },
	black = { gui = "#131515", cterm = 234 },
	backgnd = { gui = "#181a1b", cterm = 233 },
	backgnd_alt = { gui = "#2f3132", cterm = 233 },

	darkgreen = { gui = "#37ad82", cterm = 065 }, -- darkgreen
	limegreen = { gui = "#a3db81", cterm = 108 }, -- limegreen
	pink = { gui = "#ca70d6", cterm = 175 }, -- coralpink
	purple = { gui = "#a29bfe", cterm = 103 },
	red = { gui = "#d75f5f", cterm = 167 },
	orange = { gui = "#fe8019", cterm = 173 },
	yellow = { gui = "#FAC03B", cterm = 173 },
	brown = { gui = "#af875f", cterm = 137 },
	blue = { gui = "#7398dd", cterm = 067 },
}

-- initialize all colors from palette
for key, value in pairs(palette) do
	Color.new(key, value.gui)
end

-- EDITOR BASICS

Group.new("None", c.none, c.none, s.none)
Group.new("Header", c.white, c.none, s.none)
Group.new("Normal", c.white, c.backgnd, s.none)
Group.new("Noise", c.lighgray, c.none, s.none)
Group.new("Comment", c.gray, c.none, s.none)
Group.new("NonText", c.dark, c.none, s.none)

Group.new("Error", c.red, c.none, s.none)
Group.new("Number", c.purple, c.none, s.none)
Group.new("Special", c.yellow, c.none, s.none)
Group.new("String", c.darkgreen, c.none, s.none)
Group.new("Title", c.blue, c.none, s.none)
Group.new("Todo", c.pink, c.none, s.none)
Group.new("Warning", c.orange, c.none, s.none)
Group.new("Hint", c.blue, c.none, s.none)

Group.new("SitrusPurple", c.purple, c.none, s.none)
Group.new("SitrusBlue", c.blue, c.none, s.none)
Group.new("SitrusRed", c.red, c.none, s.none)
Group.new("SitrusOrange", c.orange, c.none, s.none)
Group.new("SitrusYellow", c.yellow, c.none, s.none)
Group.new("SitrusGray", c.gray, c.none, s.none)
Group.new("SitrusDark", c.dark, c.none, s.none)
Group.new("SitrusBlack", c.black, c.none, s.none)
Group.new("SitrusLimegreen", c.limegreen, c.none, s.none)
Group.new("SitrusGreen", c.green, c.none, s.none)

Group.new("SitrusBlueReverse", c.blue, c.none, s.reverse)
Group.new("SitrusOrangeReverse", c.orange, c.none, s.reverse)

Group.new("DiffAdd", c.darkgreen, c.backgnd_alt, s.none)
Group.new("DiffAdded", c.darkgreen, c.backgnd_alt, s.none)
Group.new("DiffChange", c.blue, c.backgnd_alt, s.none)
Group.new("DiffDelete", c.red, c.backgnd_alt, s.none)
Group.new("DiffLine", c.black, c.backgnd_alt, s.underline)
Group.new("DiffRemoved", c.red, c.backgnd_alt, s.none)
Group.new("DiffText", c.brown, c.backgnd_alt, s.none)

Group.new("SpellBad", c.red, c.none, s.undercurl)
Group.new("SpellCap", c.orange, c.none, s.undercurl)
Group.new("SpellLocal", c.brown, c.none, s.undercurl)
Group.new("SpellRare", c.blue, c.none, s.undercurl)

Group.new("IncSearch", c.orange, c.none, s.reverse)
Group.new("CurSearch", c.orange, c.none, s.reverse)
Group.new("Search", c.yellow, c.none, s.reverse)
Group.new("MatchParen", c.yellow, c.none, s.none)
Group.new("Pmenu", c.none, c.backgnd_alt, s.none)
Group.new("PmenuSel", c.yellow, c.dark, s.none)
Group.new("StatusLine", c.none, c.black, s.none)
Group.new("StatusLineNC", c.black, c.black, s.none)
Group.new("URI", c.darkgreen, c.none, s.underline)
Group.new("Visual", c.none, c.darkgray, s.none)
Group.new("VisualNOS", c.none, c.darkgray, s.none)
Group.new("WildMenu", c.pink, c.darkgray, s.none)

-- LINKS

Group.link("Constant", g.Normal)
Group.link("Delimiter", g.Normal)
Group.link("Function", g.Normal)
Group.link("Identifier", g.Normal)
Group.link("Statement", g.Normal)
Group.link("Type", g.Noise)
Group.link("TypeDef", g.Noise)

Group.link("Conditional", g.SitrusYellow)
Group.link("Exception", g.Noise)
Group.link("Include", g.Noise)
Group.link("Keyword", g.SitrusYellow)
Group.link("Macro", g.Noise)
Group.link("Operator", g.Noise)
Group.link("PreProc", g.Noise)
Group.link("Repeat", g.Noise)
Group.link("StorageClass", g.Noise)

Group.link("Boolean", g.Number)
Group.link("Character", g.Number)
Group.link("Debug", g.Todo)
Group.link("Directory", g.String)
Group.link("Label", g.SitrusBlue)
Group.link("SpecialChar", g.Special)
Group.link("SpecialKey", g.Special)
Group.link("Tag", g.SitrusBlue)

-- USER INTERFACE

Group.link("ErrorMsg", g.Error)
Group.link("ModeMsg", g.Normal)
Group.link("MoreMsg", g.Normal)
Group.link("Question", g.Warning)
Group.link("WarningMsg", g.Warning)
Group.link("HealthSuccess", g.String)

Group.link("CursorLine", g.StatusLine)
Group.link("ColorColumn", g.CursorLine)
Group.link("LineNr", g.SitrusGray)
Group.link("CursorLineNr", g.SitrusYellow)
Group.link("EndOfBuffer", g.NonText)
Group.link("FoldColumn", g.LineNr)
Group.link("Folded", g.NonText)
Group.link("SignColumn", g.CursorLine)
Group.link("VertSplit", g.LineNr)
Group.link("Whitespace", g.NonText)

Group.new("NormalFloat", c.white, c.backgnd_alt, s.none)

Group.link("TabLine", g.Normal)
Group.link("TabLineFill", g.Normal)
Group.link("TabLineSel", g.Special)

Group.link("NvimInternalError", g.Error)
Group.link("FloatBorder", g.Noise)

-- PLUGIN SPECIFIC

Group.new("DiagnosticUnderlineError", c.none, c.none, s.underline, c.red)
Group.new("DiagnosticUnderlineWarn", c.none, c.none, s.underline, c.orange)
Group.new("DiagnosticUnderlineHint", c.none, c.none, s.underline, c.blue)
Group.new("DiagnosticUnderlineInfo", c.none, c.none, s.underline, c.gray)

Group.link("DiagnosticError", g.Error)
Group.link("DiagnosticWarn", g.Warning)
Group.link("DiagnosticHint", g.Hint)
Group.link("DiagnosticInfo", g.Comment)

Group.link("PackerHash", g.SitrusYellow)

Group.link("GitSignsAdd", g.DiffAdd)
Group.link("GitSignsChange", g.DiffChange)
Group.link("GitSignsDelete", g.DiffDelete)

-- Telescope

Group.link("TelescopeBorder", g.Normal)
Group.link("TelescopeMatching", g.SitrusBlue)
Group.link("TelescopeSelection", g.SitrusOrange)

Group.link("LspInlayHint", g.NonText)

Group.link("CmpItemAbbr", g.NormalFloat)
Group.link("CmpItemAbbrMatch", g.SitrusYellow)
Group.link("CmpItemAbbrMatchFuzzy", g.SitrusYellow)
Group.link("CmpItemKind", g.SitrusBlue)
Group.link("CmpItemKindText", g.SitrusOrange)
Group.link("CmpItemMenu", g.SitrusPurple)

-- LANGUAGE SPECIFIC

Group.link("helpHeader", g.Header)
Group.link("helpHeadline", g.Title)
Group.link("helpHyperTextEntry", g.Number)
Group.link("helpIgnore", g.NonText)
Group.link("helpOption", g.String)
Group.link("helpSectionDelim", g.Noise)

----------------------------------------
-- Netrw
----------------------------------------
Group.link("netrwLink", g.SitrusGray)
Group.link("netrwSymLink", g.SitrusBlue)
Group.link("netrwExe", g.SitrusYellow)
Group.link("netrwComment", g.SitrusGray)

----------------------------------------
-- TreeSitter
---------------------------------------

Group.link("@comment", g.Comment)
Group.link("@none", g.None)
Group.link("@preproc", g.PreProc)
Group.link("@define", g.Define)
Group.link("@operator", g.Operator)

Group.link("@punctuation.delimiter", g.Delimiter)
Group.link("@punctuation.bracket", g.Delimiter)
Group.link("@punctuation.special", g.Delimiter)

Group.link("@string", g.String)
Group.link("@string.regex", g.String)
Group.link("@string.escape", g.SpecialChar)
Group.link("@string.special", g.SpecialChar)
Group.link("@character", g.Character)
Group.link("@character.special", g.SpecialChar)
Group.link("@boolean", g.Boolean)
Group.link("@number", g.Number)
Group.link("@float", g.Float)

Group.link("@function", g.Function)
Group.link("@function.builtin", g.Special)
Group.link("@function.call", g.Function)
Group.link("@function.macro", g.Macro)

Group.link("@method", g.Function)
Group.link("@method.call", g.Function)

Group.link("@constructor", g.Normal)
Group.link("@parameter", g.Identifier)

Group.link("@keyword", g.Keyword)
Group.link("@keyword.function", g.Keyword)
Group.link("@keyword.operator", g.SitrusRed)
Group.link("@keyword.return", g.Keyword)

Group.link("@conditional", g.Conditional)

Group.link("@repeat", g.Repeat)
Group.link("@debug", g.Debug)
Group.link("@label", g.Label)
Group.link("@include", g.Include)
Group.link("@exception", g.Exception)

Group.link("@type", g.Type)
Group.link("@type.builtin", g.Type)
Group.link("@type.definition", g.Typedef)
Group.link("@type.qualifier", g.Type)

Group.link("@storageclass", g.StorageClass)
Group.link("@attribute", g.PreProc)
Group.link("@field", g.Identifier)
Group.link("@property", g.Identifier)

Group.link("@variable", g.Normal)
Group.link("@variable.builtin", g.Normal)

Group.link("@constant", g.Constant)
Group.link("@constant.builtin", g.Normal)
Group.link("@constant.macro", g.Define)

Group.link("@namespace", g.Normal)
Group.link("@symbol", g.Boolean)

Group.link("@text", g.Normal)
Group.link("@text.title", g.Title)
Group.link("@text.literal", g.String)
Group.link("@text.uri", g.URI)
Group.link("@text.math", g.Special)
Group.link("@text.environment", g.Macro)
Group.link("@text.environment.name", g.Type)
Group.link("@text.reference", g.Constant)
Group.link("@text.todo", g.Todo)
Group.link("@text.note", g.Comment)
Group.link("@text.warning", g.Warning)
Group.link("@text.danger", g.ErrorMsg)

Group.link("@text.diff.add", g.DiffAdded)
Group.link("@text.diff.delete", g.DiffRemoved)

Group.link("@tag", g.Tag)
Group.link("@tag.attribute", g.Identifier)
Group.link("@tag.delimiter", g.Delimiter)

Group.link("@punctuation", g.Delimiter)
Group.link("@macro", g.Macro)
Group.link("@structure", g.Structure)

Group.link("@lsp.type.class", g.Noise)
Group.link("@lsp.type.decorator", g.Identifier)
Group.link("@lsp.type.enum", g.Type)
Group.link("@lsp.type.enumMember", g.Constant)
Group.link("@lsp.type.function", g.Noise)
Group.link("@lsp.type.interface", g.Keyword)
Group.link("@lsp.type.macro", g.Macro)
Group.link("@lsp.type.method", g.Function)
Group.link("@lsp.type.namespace", g.Noise)
Group.link("@lsp.type.parameter", g.Normal)
Group.link("@lsp.type.property", g.Identifier)
Group.link("@lsp.type.struct", g.Noise)
Group.link("@lsp.type.type", g.Type)
Group.link("@lsp.type.typeParameter", g.Typedef)
Group.link("@lsp.type.variable", g.Normal)

Group.link("elixirDocString", g.Comment)
Group.link("elixirModuleDeclaration", g.SitrusYellow)

----------------------------------------------
-- Express line
----------------------------------------------

Group.new("ElNormal", c.darkgray, c.white, s.reverse)
Group.link("ElCommand", g.SitrusYellow)
Group.link("ElCommandCV", g.SitrusYellow)
Group.link("ElCommandEx", g.SitrusYellow)
Group.link("ElConfirm", g.SitrusYellow)
Group.link("ElInsertCompletion", g.SitrusBlue)
Group.link("ElInsert", g.SitrusBlueReverse)
Group.link("ElMore", g.SitrusGray)
Group.link("ElNormalOperatorPending", g.Normal)
Group.link("ElPrompt", g.Normal)
Group.link("ElVisual", g.SitrusOrangeReverse)
Group.link("ElVisualBlock", g.SitrusOrange)
Group.link("ElVisualLine", g.SitrusOrangeReverse)
Group.link("ElVirtualReplace", g.SitrusOrangeReverse)
Group.link("ElError", g.SitrusRed)
Group.link("ElWarning", g.SitrusOrange)
Group.link("ElInformation", g.SitrusGray)
Group.link("ElHint", g.SitrusBlue)

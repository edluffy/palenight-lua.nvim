local M  = {
    bg             = '#292d3e',
    fg             = '#a6accd',
    invisibles     = '#4e5579',
    comments       = '#676e95',
    caret          = '#ffcc00',
    selection      = '#343b51',
    guides         = '#4e5579',
    line_numbers   = '#3a3f58',
    line_highlight = '#1c1f2b',
    white          = '#ffffff',
    black          = '#000000',
    red            = '#ff5370',
    orange         = '#f78c6c',
    yellow         = '#ffcb6b',
    green          = '#c3e88d',
    cyan           = '#89ddff',
    blue           = '#82aaff',
    paleblue       = '#b2ccd6',
    purple         = '#c792ea',
    brown          = '#c17e70',
    pink           = '#f07178',
    violet         = '#bb80b3',
}

function M.load_syntax()
    local syntax = {
    Comment      = { fg = comments },
	ColorColumn  = { bg = invisibles },
	Conceal      = { bg = bg, fg = brown },
	Cursor       = { bg = caret, fg = brown },
	lCursor      = { bg = caret, fg = brown },
	CursorIM     = { bg = caret, fg = brown },
	CursorColumn = { bg = line_highlight },
	CursorLine   = { bg = line_highlight },
	Directory    = { fg = blue },
	DiffAdd      = { fg = green},
	DiffChange   = { fg = yellow},
	DiffDelete   = { fg = red},
	DiffText     = { fg = orange},
	EndOfBuffer  = { fg = bg},
	TermCursor   = { bg = caret, fg = brown},
	TermCursorNC = { bg = caret, fg = brown },
	ErrorMsg     = { fg = red, gui="bold"},
	VertSplit    = { fg = line_numbers },
	Folded       = { bg = bg, fg = brown, gui="bold"},
	FoldColumn   = { bg = bg, fg = line_numbers },
	SignColumn   = { bg = bg, fg = fg},
	IncSearch    = { bg = comments, fg = white, gui="none" },
	Substitute   = { bg = comments, fg = white, gui="none" },
	LineNr       = { fg = line_numbers },
	CursorLineNr = { fg = comments },
	MatchParen   = { bg = cyan, fg = comments, gui="bold" },
	ModeMsg      = { fg = green },
	MsgArea      = { bg = bg, fg = fg },
	MsgSeparator = { fg = green },
	MoreMsg      = { fg = green },
	NonText      = { fg = comments },
	Normal       = { bg = bg, fg = fg },
	NormalFloat  = { bg = bg, fg = fg },
	NormalNC     = { bg = bg, fg = fg },
	Pmenu        = { bg = selection, fg = fg},
	PmenuSel     = { bg = bg, fg = fg },
	PmenuSbar    = { bg = selection },
	PmenuThumb   = { bg = comments },
	Question     = { fg = blue },
	QuickFixLine = { bg = line_highlight, gui="none" },
	Search       = { bg = comments, fg = white },
	SpecialKey   = { fg = comments },
	SpellBad     = { fg = red, gui="undercurl" },
	SpellCap     = { fg = blue, gui="undercurl" },
	SpellLocal   = { fg = orange, gui="undercurl" },
	SpellRare    = { fg = orange, gui="undercurl" },
	StatusLine   = { bg = selection, fg = fg },
	StatusLineNC = { bg = selection, fg = comments },
	TabLine      = { bg = line_numbers, fg = fg },
	TabLineFill  = { bg = selection, fg = fg },
	TabLineSel   = { bg = selection, fg = cyan },
	Title        = { fg = green },
	Visual       = { bg = selection, fg = fg },
	VisualNOS    = { bg = selection, fg = fg },
	WarningMsg   = { fg = red },
	Whitespace   = { bg = bg, fg = fg },
	WildMenu     = { bg = cyan, fg = bg },

    Constant     = { fg = orange },
    String       = { fg = green },
    Character    = { fg = green },
    -- Number         { fg = orange }, --   a number constant: 234, 0xff
    -- Boolean        { fg = orange }, --  a boolean constant: TRUE, false
    -- Float          { fg = orange }, --    a floating point constant: 2.3e10

    Identifier   = { fg = red },
    Function     = { fg = blue },

    Statement    = { fg = purple },
    -- Conditional    { },
    -- Repeat         { },
    -- Label          { },
    Operator     = { fg = cyan },
    -- Keyword        { },
    -- Exception      { },

    PreProc      = { fg = cyan },
    Include      = { fg = blue },
    Define       = { fg = purple },
    Macro        = { fg = purple },
    -- PreCondit      { },

    Type         = { fg = yellow },
    -- StorageClass   { },
    Structure    = { fg = cyan },
    -- Typedef        { },

    Special      = { fg = violet },
    -- SpecialChar    { },
    -- Tag            { },
    -- Delimiter      { },
    -- SpecialComment { },
    -- Debug          { },

    Underlined   = { gui = "underline" },
    Bold         = { gui = "bold" },
    Italic       = { gui = "italic" },

    Ignore       = { },
    Error        = { fg = red },
    Todo         = { fg = orange, bg = bg, gui="italic"},
    }
    return syntax
end

function M.load_plugin_syntax()
    local plugin_syntax = {

    -- LSP
    LspReferenceText                     = { fg = blue },
    LspReferenceRead                     = { fg = blue },
    LspReferenceWrite                    = { fg = blue },

    LspDiagnosticsDefaultError           = { fg = red },
    LspDiagnosticsDefaultWarning         = { fg = orange },
    LspDiagnosticsDefaultInformation     = { fg = blue },
    LspDiagnosticsDefaultHint            = { fg = yellow },

    LspDiagnosticsVirtualTextError       = { fg = red },
    LspDiagnosticsVirtualTextWarning     = { fg = orange },
    LspDiagnosticsVirtualTextInformation = { fg = blue },
    LspDiagnosticsVirtualTextHint        = { fg = yellow },

    LspDiagnosticsUnderlineError         = { fg = red, gui="underline"    },
    LspDiagnosticsUnderlineWarning       = { fg = orange, gui="underline" },
    LspDiagnosticsUnderlineInformation   = { fg = blue, gui="underline"   },
    LspDiagnosticsUnderlineHint          = { fg = yellow, gui="underline" },

    -- LspDiagnosticsFloatingError          { },
    -- LspDiagnosticsFloatingWarning        { },
    -- LspDiagnosticsFloatingInformation    { },
    -- LspDiagnosticsFloatingHint           { },

    -- LspDiagnosticsSignError              { },
    -- LspDiagnosticsSignWarning            { },
    -- LspDiagnosticsSignInformation        { },
    -- LspDiagnosticsSignHint               { },

    -- Treesitter
    TSAnnotation         = { fg = purple },
    TSAttribute          = { fg = purple },
    TSBoolean            = { fg = orange },
    TSCharacter          = { fg = yellow },
    TSComment            = { fg = comments, gui="italic" },
    TSConstructor        = { fg = fg },
    TSConditional        = { fg = purple },
    TSConstant           = { fg = pink },
    TSConstBuiltin       = { fg = cyan, gui="italic" },
    TSConstMacro         = { fg = pink },
    --TSError            =   { fg = red, gui="underline" },
    --TSException        =   { fg = red, gui="underline" },
    TSField              = { fg = fg },
    TSFloat              = { fg = orange },
    TSFunction           = { fg = blue },
    TSFuncBuiltin        = { fg = blue, gui="italic" },
    TSFuncMacro          = { fg = yellow },
    TSInclude            = { fg = purple, gui="italic" },
    TSKeyword            = { fg = purple },
    TSKeywordFunction    = { fg = blue },
    TSLabel              = { fg = orange },
    TSMethod             = { fg = fg },
    TSNamespace          = { fg = blue, gui="italic" },
    TSNone               = { },
    TSNumber             = { fg = orange },
    TSOperator           = { fg = fg },
    TSParameter          = { fg = green },
    TSParameterReference = { fg = fg },
    TSProperty           = { fg = fg },
    TSPunctDelimiter     = { fg = fg },
    TSPunctBracket       = { fg = fg },
    TSPunctSpecial       = { fg = cyan },
    TSRepeat             = { fg = purple },
    TSString             = { fg = green },
    TSStringRegex        = { fg = green },
    TSStringEscape       = { fg = green },
    TSSymbol             = { fg = green },
    TSType               = { fg = blue },
    TSTypeBuiltin        = { fg = blue, gui="italic" },
    TSVariable           = { fg = fg },
    TSVariableBuiltin    = { fg = blue, gui="italic" },

    TSTag                = { fg = orange },
    TSTagDelimiter       = { fg = green },
    TSText               = { fg = green },
    TSEmphasis           = { fg = fg, gui="bold" },
    TSUnderline          = { fg = fg, gui="underline" },
    TSStrike             = { fg = fg },
    TSTitle              = { fg = green },
    TSLiteral            = { fg = purple },
    TSURI                = { fg = fg, gui="underline" },
    }

    return plugin_syntax
end

function M.get_highlight(group, hi)
    return 'highlight ' .. group .. ' '
    .. ' guifg=' .. (hi.fg  or 'none')
    .. ' guibg=' .. (hi.bg  or 'none')
    .. ' gui='   .. (hi.gui or 'none')
end

function M.async_export(fname)
    local a
    a = vim.loop.new_async(vim.schedule_wrap(function ()
        local s = ""
        for group, hi in pairs(M.load_syntax()) do 
           s = s .. M.get_highlight(group, hi) .. '\n'
        end
        for group, hi in pairs(M.load_plugin_syntax()) do 
           s = s .. M.get_highlight(group, hi) .. '\n'
        end
        local file = io.open(fname, "w")
        file:write(s)
        file:close(file)
        a:close()
    end))
    a:send()
end

--async_export("/Users/edluffy/Dev/palenight/colors/palenight.vim")


return M

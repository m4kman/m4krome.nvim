local c = require("m4krome.colors").setup()

local M = {}

function M.setup()
	local theme = {}
	theme.base = {
		ColorColumn = { bg = c.bg_cursor_line },

		Cursor = { fg = c.editorCursor.fg, bg = c.editorCursor.bg },
		CursorColumn = { bg = c.bg_cursor_line },
		CursorLine = { bg = c.bg_cursor_line },
		Directory = { fg = c.fg, bg = c.bg },

		DiffAdd = { bg = c.diffEditor.incertedText_bg },
		DiffChange = { bg = c.diffEditor.changed_bg },
		DiffDelete = { bg = c.diffEditor.removedText_bg },
		DiffText = { bg = c.diffEditor.diff_fg },

		-- EndOfBuffer
		-- ErrorMsg
		VertSplit = { fg = c.fg, bg = c.bg },
		Folded = { fg = c.fg, bg = c.editor.fold_bg },

		SignColumn = { fg = c.fg, bg = c.bg },
		IncSearch = { fg = c.fg, bg = c.editor.findMatch_bg },
		LineNr = { fg = c.editorLineNumber.fg, bg = c.bg },
		-- LineNrAbove 'relativenumber'
		-- LineNrBelow  'relativenumber'
		CursorLineNr = { fg = c.editorLineNumber.active_fg, bg = c.bg },

		MatchParen = { fg = c.white },

		NonText = { fg = c.non_text_fg },
		Normal = { fg = c.fg, bg = c.bg },

		Pmenu = { fg = c.editorSuggestWidget.fg, bg = c.editorSuggestWidget.bg },
		PmenuSel = { fg = c.editorSuggestWidget.selected_fg, bg = c.editorSuggestWidget.selected_bg },

		Search = { fg = c.fg, bg = c.editor.findMatchHighlight_bg },

		SpecialKey = { fg = c.special_key_fg },

		StatusLine = { fg = c.statusBar.fg, bg = c.statusBar.bg },

		Title = { fg = c.purple },
		Visual = { bg = c.editor.rangeHighlight_bg },

		WildMenu = { fg = c.editorSuggestWidget.selected_fg, bg = c.editorSuggestWidget.selected_bg },

		Comment = { fg = c.tokenColors.comment_fg, bg = c.bg },
		Constant = { fg = c.tokenColors.constant.fg, bg = c.bg },
		String = { fg = c.tokenColors.string_fg, bg = c.bg },
		Character = { fg = c.tokenColors.constant.Character_fg, bg = c.bg },
		Number = { fg = c.tokenColors.constant.numeric_fg, bg = c.bg },
		Boolean = { fg = c.tokenColors.constant.boolean_fg, bg = c.bg },
		Float = { fg = c.tokenColors.constant.numeric_fg, bg = c.bg },

		Identifier = { fg = c.tokenColors.variables.fg, bg = c.bg },
		Function = { fg = c.tokenColors.entity.name_fg, bg = c.bg },

		PreProc = { fg = c.tokenColors.keyword_fg, bg = c.bg },

		Statement = { fg = c.tokenColors.keyword_fg, bg = c.bg },

		Type = { fg = c.tokenColors.storage.type_fg, bg = c.bg },

		Special = { fg = c.fg, bg = c.bg },

		Underlined = { style = "underline" },
		Ignore = { fg = c.editorWhitespace.fg },
		Error = { fg = c.error_fg },
		Todo = { fg = c.tokenColors.entity.name_fg, bg = c.bg },

		ErrorMsg = { fg = c.error_fg, bg = c.bg },
		WarningMsg = { fg = c.error_fg, bg = c.bg },
	}
	theme.plugins = {
		-- GitSigns
		GitSignsAdd = { fg = c.diffEditor.incertedText_bg },
		GitSignsChange = { fg = c.diffEditor.changed_bg },
		GitSignsDelete = { fg = c.diffEditor.removedText_bg },
		-- nvim-ts-rainbow
		rainbowcol1 = { fg = c.editorBracketHighlight.fg1 },
		rainbowcol2 = { fg = c.editorBracketHighlight.fg2 },
		rainbowcol3 = { fg = c.editorBracketHighlight.fg3 },
		rainbowcol4 = { fg = c.editorBracketHighlight.fg4 },
		rainbowcol5 = { fg = c.editorBracketHighlight.fg5 },
		rainbowcol6 = { fg = c.editorBracketHighlight.fg6 },
		rainbowcol7 = { fg = c.editorBracketHighlight.fg7 },
		-- nvim-tree
		NvimTreeSymlink = { fg = c.orange },
		NvimTreeRootFolder = { fg = c.blue },
		NvimTreeExecFile = { fg = c.blue },
		NvimTreeSpecialFile = { fg = c.white },
		NvimTreeImageFile = { fg = c.purple },
		NvimTreeGitDirty = { fg = c.diffEditor.changed_bg },
		NvimTreeGitStaged = { fg = c.blue },
		NvimTreeGitNew = { fg = c.diffEditor.incertedText_bg },
		NvimTreeGitDeleted = { fg = c.diffEditor.removedText_bg },
		NvimTreeNormal = { fg = c.fg, bg = c.bg },

		-- diff
		-- commits
		diffFile = { fg = c.white },
		diffOldFile = { fg = c.orange },
		diffNewFile = { fg = c.orange },
		diffLine = { fg = theme.base.Comment.fg },
		diffIndexLine = { fg = c.white },
		diffAdded = { fg = theme.base.DiffAdd.bg },
		diffRemoved = { fg = theme.base.DiffDelete.bg },
		diffChanged = { fg = theme.base.DiffChange.bg },
	}
	return theme
end

return M

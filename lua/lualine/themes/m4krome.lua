local c = require("m4krome.colors").setup()

local m4krome = {}

m4krome.normal = {
	a = { fg = c.bg, bg = c.blue, gui = "bold" },
	b = { fg = c.fg, bg = c.focus_high },
	c = { fg = c.fg, bg = c.bg },
}

m4krome.insert = {
	a = { fg = c.bg, bg = c.white, gui = "bold" },
	b = { fg = c.fg, bg = c.focus_high },
	c = { fg = c.fg, bg = c.bg },
}

m4krome.command = {
	a = { fg = c.bg, bg = c.orange, gui = "bold" },
	b = { fg = c.fg, bg = c.focus_high },
	c = { fg = c.fg, bg = c.bg },
}

m4krome.visual = {
	a = { fg = c.bg, bg = c.pink, gui = "bold" },
	b = { fg = c.fg, bg = c.focus_high },
	c = { fg = c.fg, bg = c.bg },
}

m4krome.replace = {
	a = { fg = c.bg, bg = c.pink, gui = "bold" },
	b = { fg = c.fg, bg = c.focus_high },
	c = { fg = c.fg, bg = c.bg },
}

m4krome.inactive = {
	a = { fg = c.white, bg = c.focus_high, gui = "bold" },
	b = { fg = c.fg, bg = c.focus_high },
	c = { fg = c.fg, bg = c.bg },
}

return m4krome

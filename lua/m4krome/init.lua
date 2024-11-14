local theme = require("m4krome.theme").setup()
local m4krome_colors = require("m4krome.colors").setup()
local M = {}

local function highlight(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	else
		vim.cmd(hl)
	end
end

local function terminal()
	-- dark mode foreground color
	vim.g.terminal_color_0 = m4krome_colors.fg
	vim.g.terminal_color_8 = m4krome_colors.fg

	-- light mode foreground color
	vim.g.terminal_color_7 = m4krome_colors.fg
	vim.g.terminal_color_15 = m4krome_colors.fg

	-- red
	vim.g.terminal_color_1 = m4krome_colors.pink
	vim.g.terminal_color_9 = m4krome_colors.pink

	-- green
	vim.g.terminal_color_2 = m4krome_colors.blue
	vim.g.terminal_color_10 = m4krome_colors.blue

	-- yellow
	vim.g.terminal_color_3 = m4krome_colors.gray
	vim.g.terminal_color_11 = m4krome_colors.gray

	-- blue
	vim.g.terminal_color_4 = m4krome_colors.purple
	vim.g.terminal_color_12 = m4krome_colors.purple

	-- magenta
	vim.g.terminal_color_5 = m4krome_colors.white
	vim.g.terminal_color_13 = m4krome_colors.white

	-- cyan
	vim.g.terminal_color_6 = m4krome_colors.orange
	vim.g.terminal_color_14 = m4krome_colors.orange
end

function M.colorscheme()
	if vim.g.color_name then
		vim.cmd("hightlight clear")
	end

	vim.g.colors_name = "m4kchrome"

	for group, color in pairs(theme.base) do
		highlight(group, color)
	end

	for group, color in pairs(theme.plugins) do
		highlight(group, color)
	end

	terminal()
end

return M

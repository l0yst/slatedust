-- ================================================================
--  wezterm.lua — full config
--  theme: SlateDust (https://github.com/l0yst/slatedust)
-- ================================================================

local wezterm = require("wezterm")
local config = {}

config.max_fps = 70
config.front_end = "WebGpu"
config.freetype_render_target = "Light"
config.freetype_load_target = "Light"
config.webgpu_power_preference = "HighPerformance"
config.adjust_window_size_when_changing_font_size = false

config.enable_tab_bar = false
config.enable_scroll_bar = false
config.enable_kitty_graphics = true
config.pane_focus_follows_mouse = true

config.window_padding = {
	left = 30,
	right = 30,
	top = 30,
	bottom = 10,
}

config.window_background_opacity = 1.0
config.text_background_opacity = 1.0

config.inactive_pane_hsb = {
	saturation = 1.0,
	brightness = 0.75,
}

-- ============= Fonts =======================================
config.font = wezterm.font_with_fallback({
	{
		family = "JetBrains Mono",
		weight = "Regular",
		italic = false,
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	},
	"JetBrainsMono Nerd Font",
	"Symbols Nerd Font",
	"Noto Color Emoji",
})

config.font_size = 11.0
config.line_height = 1.35

-- ============================================================
-- COLORS — SlateDust
-- ============================================================

config.command_palette_bg_color = "#252a2d"
config.command_palette_fg_color = "#7a858e"
config.command_palette_font_size = 11.0
config.ui_key_cap_rendering = "Emacs"

config.colors = {

	foreground = "#c0c8cf", -- --text-base
	background = "#1c2023", -- --bg

	-- Cursor
	cursor_bg = "#8bafc4", -- --sky
	cursor_fg = "#1c2023", -- --bg
	cursor_border = "#8bafc4", -- --sky

	-- Selection
	selection_fg = "none",
	selection_bg = "rgba(139,175,196,0.03)", -- sky tinted

	-- Splits
	scrollbar_thumb = "#2e3438",
	split = "rgba(192,200,207,0.10)",

	-- ANSI colors — mapped to SlateDust palette
	ansi = {
		"#1c2023", -- black      → --bg
		"#c4a98a", -- red        → --terracotta  (errors)
		"#a8c292", -- green      → --sage        (success)
		"#c2bf88", -- yellow     → --sand        (warnings)
		"#8bafc4", -- blue       → --sky         (info/links)
		"#a699c4", -- magenta    → --lavender    (keywords)
		"#8fc2ad", -- cyan       → --teal        (types)
		"#c0c8cf", -- white      → --text-base
	},

	brights = {
		"#505a61", -- bright black   → --text-dim
		"#c4a98a", -- bright red     → --terracotta
		"#a8c292", -- bright green   → --sage
		"#c2bf88", -- bright yellow  → --sand
		"#8bafc4", -- bright blue    → --sky
		"#a699c4", -- bright magenta → --lavender
		"#8fc2ad", -- bright cyan    → --teal
		"#dde2e6", -- bright white   → --text-bright
	},

	tab_bar = {
		background = "#1c2023",
	},
}

return config

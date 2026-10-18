local colors = require("config.colors")

hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 10,

		border_size = 2,

		col = {
			active_border = {
				colors = {
					colors.gray100,
					colors.gray400,
				},
				angle = 45,
			},

			inactive_border = colors.gray700,
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 0,

		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
})

hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 3,
		gaps_workspaces = 3,

		border_size = 5,

		col = {
			active_border = "rgba(d8d8d822)",
			inactive_border = "rgba(c8c8c822)",
		},
		resize_on_border = false, --drag window with this

		snap = {
			enabled = true,
			respect_gaps = true,
		},
	},
	decoration = {
		--rounding_power = 0,
		rounding = 0,

		shadow = {
			enabled = false,
		},

		blur = {
			enabled = true,
			xray = true,
			special = false, --wat's dis?
			new_optimizations = true, --needed for xray
			size = 3,
			passes = 1,
		},
		dim_inactive = true,
		dim_strength = 0.03,
		dim_special = 0.1,
	},
	animations = {
		enabled = true,
	},
	dwindle = {
		preserve_split = true,
	},
})

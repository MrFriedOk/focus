hl.config({

	--WHY is this not default?
	xwayland = {
		force_zero_scaling = true,
	},

	input = {
		repeat_delay = 220,
		repeat_rate = 35,
		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.7,
		},
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		vrr = 0,
	},
})

local opacity = 0.95
local w, h, step = 900, 600, 32

hl.window_rule({
	match = { class = "kitty" },
	opacity = opacity,
	--float = true,
	size = { w, h },
	--	move = { "(monitor_w - window_w) / 2", "(monitor_h - window_h) / 2" },
})

hl.workspace_rule({ workspace = "special:special", gaps_out = 5 })
hl.workspace_rule({ workspace = "special:magic", gaps_out = 4 })

hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })

hl.on("window.open", function(w)
	if not w or w.class ~= "kitty" then
		return
	end --ignore all not kitty things

	local n = 0
	for _, win in ipairs(hl.get_windows()) do
		if win.class == "kitty" then
			n = n + 1
		end
	end

	local off = ((n - 1) % 8) * step
	hl.dispatch(hl.dsp.window.move({ x = off, y = off, relative = true, window = w }))
end)

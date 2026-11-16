local fileExp = "dolphin"
local launcher = "rofi -show drun"
local term = "kitty" --hi
local browser = "firefox"
local editor = string.format("%s nvim &", terminal)
--local office

hl.bind("SUPER + A", hl.dsp.exec_cmd(launcher))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileExp))
hl.bind("SUPER + T", hl.dsp.exec_cmd(term))

hl.bind("SUPER + P", hl.dsp.exec_cmd("hyprshot -m region -f $(date '+%Y-%m-%d_%H.%M.%S.png') -o ~/Screenshots"))

--focus with arrows
for i = 1, 4 do
	local arrowkey = { "Left", "Right", "Up", "Down" }
	local focusdir = { "l", "r", "u", "d" }
	hl.bind(
		"SUPER + " .. arrowkey[i],
		hl.dsp.focus({ direction = focusdir[i] }),
		{ description = "Window: Focus " .. arrowkey[i] }
	)
end

--move windows with arrows
for i = 1, 4 do
	local arrowkey = { "Left", "Right", "Up", "Down" }
	local focusdir = { "l", "r", "u", "d" }
	hl.bind("SUPER + SHIFT + " .. arrowkey[i], hl.dsp.window.move({ direction = focusdir[i] }))
end

--media ctl
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+ -l 1.5"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),
	{ locked = true, repeating = true }
)

for i = 1, 10 do
	hl.bind("SUPER + SHIFT + " .. (i % 10), function()
		hl.dispatch(hl.dsp.window.move({ workspace = i, follow = true }))
	end)
end

for i = 1, 10 do
	hl.bind("SUPER + " .. (i % 10), function()
		hl.dispatch(hl.dsp.focus({ workspace = i }))
	end)
end

hl.bind("SUPER + Q", hl.dsp.window.close())

hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))

--you can have multiple special workspaces!!! :O
--hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind("SUPER + SHIFT + ALT + S", hl.dsp.window.move({ workspace = "special:special" }))
hl.bind("SUPER + ALT + S", hl.dsp.workspace.toggle_special("special"))

--hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))

hl.bind("SUPER + D", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

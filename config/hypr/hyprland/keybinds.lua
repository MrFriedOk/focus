local fileExp = "dolphin"
local launcher = "rofi -show drun"
local term = "kitty" --kitty supremacy
local browser = "firefox"
--local office

hl.bind("SUPER + A", hl.dsp.exec_cmd(launcher))

hl.bind("SUPER + T", hl.dsp.exec_cmd(term))

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
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind("SUPER + SHIFT + ALT + S", hl.dsp.window.move({ workspace = "special:special" }))
hl.bind("SUPER + ALT + S", hl.dsp.workspace.toggle_special("special"))
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))

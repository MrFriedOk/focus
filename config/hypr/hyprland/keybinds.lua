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

hl.bind("SUPER + Q", hl.dsp.window.close())

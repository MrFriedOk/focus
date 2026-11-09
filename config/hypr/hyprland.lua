local config = "hyprland"
local configs = { "execs", "rules", "colors", "anims", "general", "keybinds" }

--not sure why i made this but ok, cool for loop
for i, c in ipairs(configs) do
	require(string.format("%s.%s", config, c))
end

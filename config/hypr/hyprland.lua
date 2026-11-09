local config = "hyprland"
local configs = { "execs", "rules", "colors", "anims", "general", "keybinds" }

for c in ipairs(configs) do
	require(string.format("%s/%s", config, c))
end

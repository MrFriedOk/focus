local popin = "popin 100%" --flash the window up lol
local speed = 3

hl.curve("snappy", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("bouncy", { type = "spring", mass = 1, stiffness = 120, dampening = 12 })

hl.animation({ leaf = "windows", enabled = true, speed = speed, spring = "bouncy", style = popin })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "snappy" }) --spring = "bouncy" })
hl.animation({ leaf = "workspaces", enabled = true, speed = speed, spring = "bouncy", style = "slidefade 20%" })

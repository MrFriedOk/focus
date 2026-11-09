local popin = "popin 100%" --flash the window up lol
local speed = 2 --smaller = faster

hl.curve("snappy", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("slide", { type = "bezier", points = { { 0.9, 0 }, { 0.1, 1 } } })
hl.curve("woosh", { type = "bezier", points = { { 0.3, 0 }, { 0.7, 1 } } }) --literaly ran out of names bwwo
hl.curve("bouncy", { type = "spring", mass = 1, stiffness = 200, dampening = 12 })

hl.animation({ leaf = "windows", enabled = true, speed = speed, bezier = "woosh", style = popin })
hl.animation({ leaf = "fade", enabled = true, speed = speed, bezier = "woosh" }) --spring = "bouncy" })
hl.animation({ leaf = "workspaces", enabled = true, speed = speed, bezier = "slide", style = "slidefade 10%" })
hl.animation({ leaf = "global", enabled = true, speed = speed, bezier = "woosh" })
hl.animation({ leaf = "border", enabled = true, speed = speed, bezier = "woosh" })
hl.animation({ leaf = "layers", enabled = true, speed = speed, bezier = "woosh" })

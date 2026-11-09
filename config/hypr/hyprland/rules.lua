local opacity = 0.95

hl.window_rule({ match = { class = "kitty" }, opacity = opacity, float = true })

hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })

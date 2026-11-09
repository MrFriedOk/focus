hl.on("hyprland.start", function()
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 18")
	hl.exec_cmd("hypridle") --lol, make sure hypridle actually works
	hl.exec_cmd("dbus-update-activation-environment --all")

	hl.exec_cmd("qs")

	--clip hist
	hl.exec_cmd("wl-paste --type text --watch bash -c 'cliphist store'")
	hl.exec_cmd("wl-paste --type image --watch bash -c 'cliphist store'")
end)

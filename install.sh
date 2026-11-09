#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

config="${XDG_CONFIG_HOME:-$HOME/.config}/"
share="${XDG_DATA_HOME:-$HOME/.local/share}"
state="${XDG_STATE_HOME:-$HOME/.local/state}/rice-hash"

tree_hash() {
	(cd "$1" && find . -type f ! -name '.qmlls.ini' -print0 | sort -z |
		xargs -0 -r sha256sum | sha256sum | cut -d' ' -f1)
}

install() {
	local origin="$1"
	local to="$2"
	local hash="$state/$(basename "$to").hash"

	if [ -e "$to" ] || [ -L "$to" ]; then
		if [ -f "$hash" ] && [ "$(tree_hash "$to")" = "$(cat "$hash")" ]; then
			echo "replacing untouched install $to"
			rm -rf "$to"
		else
			mv "$to" "$to.bak-$(date +%Y%m%d-%H%M%S)"
			echo "backed up existing directories $to"
		fi
	fi
	mkdir -p "$to"
	cp -r "$origin"/. "$to"/
	tree_hash "$to" >"$hash"
}

install config/quickshell "$config/quickshell"
install config/hypr "$config/hypr"
install config/kitty "$config/kitty"
install config/fish "$config/fish"

# Vision
## A Unified Theme
maurice was cute, but I want to make this rice more minimal (feeling) and while it sounds bad, limiting on customization. The issue with maurice was this, the gradient wallpaper thing looks cool, but there's something appealing about actual wallpapers, but maurice's constantly changing colors would conflict with any wallpaper out there. 
## Speedy Keybinds
Just like how I use neovim, I want the shell to have intuitive and helpful keybinds. I wont bombard keybinds, I will have a handful that give quick access to the shell's actually useful features.
## The Look
Minimal, the rice should look glassy and chill (or something idk), maurice was a bit loud. 
### Shaders
I don't want to go too crazy with these but Quickshell (QtQuick) makes it easy to drop in frag shaders with a `ShaderEffect` so I could do a little overlay thing for the background, maybe have a shader partially obscuring a visualizer to make it (visualizer) look distant.
### Dynamic
The rice should *react* to the changing desktop, like a parallax that shifts when a workspace is changed.
### Fluid
Components should blend into each other. I have already practiced this a little in maurice, where many components have a `progress/p/prog` real variable that simply equals a boolean (like if this specific component should be visible boolean) and a `Behavior on p` to ease the real, making all components react to this single variable. This is handy for most things, including a parallax background, where the x/y value of a component can be equal to `p` which is equal to a range of a numbers of workspaces. 
#### `State`s/`Transition`s
When a component has more than a state of 1 or 0, or more than a range of 1 to 0, it is appropriate to use `State`s and animate them with `Transition`s. Like a lock screen, what should the lock screen look like when it is transitioning from locked to unlocked, vice versa? This sounds like 1 or 0, but locked would be equal to if Wayland's `WlSessionLock.locked` is true. Ok so that example sucks, what if I want `State`s for a notification? When urgency is critical, `Transition` the default to a more 'urgent-looking' look, this can be applied to all other urgency values (which I belive are `enums`).
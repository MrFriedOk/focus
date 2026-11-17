# focus
a placeholder name.

## Installing
System-level configuring/installs are not handled, ensure you have the below installed. Configuration may not be necessary
### Dependencies 
  - `hyprland`, this is a Hyprland rice.
  - `pipewire`, required for audio ctl and monitoring.
  - `quickshell`, Quickshell is the majority of this rice.
  - `upower`, required for battery monitoring. Shell checks for battery, so if it is not installed, the widget probably wont show up.
#### Others
Mostly for my convenience, but these are things I have installed/configured/used somewhere in a config. Probably not super crucial to functioning.
  - `firefox`
  - `hyprshot`, screenshot util.
  - `kitty` (Hyprland actually recommends this)
  - `fish`, shell
  - `starship`, fish initializes starship. No config required, but this rice does not have any config for it, so defaults will be used.
  - `eza`, better `ls`. Included in fish config.
### Guide
I main Arch Linux. I am sorry, but the line below is only applicable for `pacman`
```
sudo pacman -S --needed hyprland quickshell pipewire upower
```
Each release (and the repo) contains an install script. Ensure that this script has execute perms. All it does is back up directories and copy the data from the `config` folder and puts them in the default config path for their corresponding app.
> [!WARNING]
> I have run this script several times but please run it with caution. Treat every directory it will replace and backup (`quickshell`,`fish`,`kitty`,`hypr`) as if it will ***NOT*** be backed up. 
> Be careful with scripts online!
Once the script has been run and the directories are in the right place, you should be good. Quickshell will not run, but should when Hyprland starts next session. Alternatively, run `qs -d` in the terminal (if already in Hyprland) to launch Quickshell and detach it from the terminal.
It may also be helpful to run `hyprctl reload` to refresh the Hyprland config. Doing this will not run auto exec commands, however. 
## References
  - [md3](https://paletacolorpro.com/en/material-design)
  - [Quickshell docs](https://quickshell.org/docs/v0.3.2/)
  - [Qt docs](https://doc.qt.io/qt-6/)
  - [`caelestia-dots` for inspiration](https://github.com/caelestia-dots/shell)
  - [Hyprland wiki](https://wiki.hypr.land/)
  - [`illogical-impulse` for inspiration](https://github.com/end-4/dots-hyprland/)

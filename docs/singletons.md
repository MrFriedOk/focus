# Singletons
Singletons are collections of data created as soon as anything needs to access or mutate data within the singleton, and provides a single, unified data thingy.
**Not necessarily "never mutate this data", just "is this data the only one of its kind?"**
maurice didn't utilize singletons enough, I had two singletons, `Color.qml` and `General.qml`. This wasn't necessarily wrong, it was just amateur, and it showed in the... variable names. Refer to [vision](vision.md), I will be referencing unified data more often here. 
## Hyprland
Hyprland for example will contain variables inside a singleton, because the bar and maybe several other components will have to reference Hyprland properties. Calling or mutating these values for individual components will sting later. 
## Theme
This is custom, not flagged in docs anywhere but the same logic applies, there's one unified theme that every component calls for. I did this *a lot* with maurice, and it genuinely is nice.
## Networking
`Quickshell.Networking` is flagged as a singleton and it makes sense, there's obviously only one instance of these properties.
## Audio
### MPRIS
Will hold all of the data that can be used to grab album art and tons of other info, I did this in maurice, but didn't use a singleton.
### Pipewire
Cotains the readonly and mutable properties of Pipewire, for controlling and viewing audio info.

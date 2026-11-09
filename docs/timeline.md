# Timeline
I should create a general timeline to keep myself focused on thing to avoid the "haha look at this random feature" thing I had with [maurice](https://github.com/MrFriedOk/maurice).
## Now
I can make the general file structure, like divide files based on their components and break it down based on what actually appears on screen, like layers. I did this with maurice but for some reason, I called a bunch of different components within a `Top.qml` (for example), which help top layer things. This honestly only made the organizing worse, especially because a `PanelWindow`'s `Wlrshell.layer` *is* a `WlrLayer.Top` by default. I can instead divide the shell folder into less broad categories, maybe like `common` for reusable types and custom components, `data` for [`singletons`](./singletons.md), `bar` (wonder what this one is for), `windows`, and then break those down further. 
### I should make singletons now

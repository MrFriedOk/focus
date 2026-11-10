import Quickshell
import QtQuick
import Quickshell.Wayland
import "bar" as B
import "windows" as W

ShellRoot {
    B.Bar {
        WlrLayershell.layer: WlrLayer.Top
    }
    Variants {
        model: Quickshell.screens
        delegate: W.Background {}
    }
}

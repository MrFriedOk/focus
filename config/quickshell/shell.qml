import Quickshell
import QtQuick
import Quickshell.Wayland
import "bar" as B
import "windows" as W
import "services" as S

ShellRoot {
    B.Bar {
        visible: false
        WlrLayershell.layer: WlrLayer.Top
    }
    Variants {
        model: Quickshell.screens
        delegate: W.Background {}
    }
}

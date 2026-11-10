import Quickshell
import QtQuick
import Quickshell.Wayland

PanelWindow {
    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }
    color: "transparent"
    WlrLayershell.layer: WlrLayer.Background
}

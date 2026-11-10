import Quickshell
import QtQuick
import Quickshell.Wayland
import qs.data as D

PanelWindow {
    id: root
    property int x: D.Moving.clock.x
    property int y: D.Moving.clock.y
    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }
    color: "transparent"
    WlrLayershell.layer: WlrLayer.Background
    exclusionMode: ExclusionMode.Ignore
    Rectangle {
        color: D.Theme.bg
        width: 100
        x: root.x
        y: root.y
        height: 100
    }
}

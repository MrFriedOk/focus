import Quickshell
import QtQuick
import Quickshell.Wayland
import qs.data as D

PanelWindow {

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
        anchors {
            fill: parent
            //centerIn: parent
        }
        width: 100
        x: 100
        height: 100
    }
}

import Quickshell
import QtQuick
import Quickshell.Wayland
import qs.data as D
import qs.modules as M

PanelWindow {
    id: root

    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }
    color: "transparent"
    WlrLayershell.layer: WlrLayer.Background
    exclusionMode: ExclusionMode.Ignore

    M.DragableClock {}
}

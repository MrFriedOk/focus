import Quickshell
import QtQuick
import Quickshell.Wayland
import qs.data as D
import qs.modules as M
import qs.frame as F
import "dynamic"

PanelWindow {
    id: root

    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }
    color: D.Theme.surface //"transparent"
    WlrLayershell.layer: WlrLayer.Background
    exclusionMode: ExclusionMode.Ignore

    Dynamic {}

    M.DragableClock {}
}

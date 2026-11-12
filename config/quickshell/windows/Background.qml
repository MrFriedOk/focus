import Quickshell
import QtQuick
import Quickshell.Wayland
import qs.data as D
import qs.modules as M
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

    Loader {
        active: true
        Dynamic {}
    }

    M.DragableClock {}
}

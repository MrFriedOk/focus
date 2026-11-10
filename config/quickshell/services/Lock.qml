import Quickshell.Wayland
import QtQuick
import qs.data

Scope {
    //property bool lockB: false
    property real progress: lock.locked ? 1 : 0
    Behavior on progress {
        NumberAnimation {
            duration: General.anim.dur
        }
    }
    WlSessionLock {
        id: lock
        locked: ;
    }
}

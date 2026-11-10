import Quickshell.Wayland
import Quickshell
import QtQuick
import qs.data as D
import qs.windows as W

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
        locked: false
        WlSessionLockSurface {
            color: "transparent"
            W.LockScreen {}
        }
    }
}

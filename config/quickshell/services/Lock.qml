import Quickshell.Wayland
import Quickshell
import QtQuick
import qs.data as D
import qs.windows as W

Scope {
    id: root
    //property bool lockB: false
    //property real progress: lock.locked ? 1 : 0
    //Behavior on progress {
    //    NumberAnimation {
    //        duration: D.General.anim.dur
    //    }
    // }
    WlSessionLock {
        id: lock
        locked: D.Lock.locked //root.progress > 0 || root.lockB
        surface: WlSessionLockSurface {
            color: "transparent"
            W.LockScreen {}
        }
    }
}

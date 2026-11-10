pragma Singleton
import Quickshell
import Quickshell.Wayland

Singleton {
    id: root
    property bool lock: false
    WlSessionLock {
        id: lock
        locked: root.lock
    }
}

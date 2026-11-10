pragma Singleton
import Quickshell
import Quickshell.Wayland

Singleton {
    id: root

    function toggle() {
        locked = !locked;
    }

    property bool locked: true
}

import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Hyprland

Scope {
    id: root

    property string app: "focus"

    GlobalShortcut {
        appid: root.app
        name: "lock"
        description: "lock the session, DOES NOT UNLOCK"
        onPressed: D.Lock.lock()
    }

}

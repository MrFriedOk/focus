import Quickshell
import Quickshell.Wayland
import QtQuick
import qs.data as D
import Quickshell.Services.Pam

WlSessionLockSurface {
    color: "transparent"
    property bool locked: parent.locked
    Rectangle {
        anchors {
            top: parent.top
            right: parent.right
        }
        width: 100
        height: 100

        MouseArea {
            anchors {
                fill: parent
            }
            onClicked: root.locked = false
        }
    }
}

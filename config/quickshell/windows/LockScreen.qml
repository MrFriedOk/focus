import Quickshell
import Quickshell.Wayland
import QtQuick
import qs.data as D
import Quickshell.Services.Pam

Rectangle {
    id: root

    width: 100
    height: 100

    //property bool locked: D.Lock.locked
    anchors {
        top: parent.top
        right: parent.right
    }

    MouseArea {
        onClicked: D.Lock.unlock()

        anchors {
            fill: parent
        }

    }

}

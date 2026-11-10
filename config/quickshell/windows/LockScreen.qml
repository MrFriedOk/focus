import Quickshell
import Quickshell.Wayland
import QtQuick
import qs.data as D
import Quickshell.Services.Pam

Rectangle {
    id: root
    //property bool locked: D.Lock.locked
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
        onClicked: D.Lock.toggle()
    }
}

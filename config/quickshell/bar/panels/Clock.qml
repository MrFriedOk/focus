import QtQuick
import Quickshell
import qs.data as D

Rectangle {
    id: root
    anchors {
        verticalCenter: parent.verticalCenter
        left: parent.left
        leftMargin: D.General.bar.size
    }
    width: 100
    color: D.Theme.bg
}

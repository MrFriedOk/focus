import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D

Item {
    anchors {
        top: parent.top
        right: parent.right
        left: parent.left
    }
    height: D.General.bar.size
    Rectangle {
        anchors.fill: parent
    }
}

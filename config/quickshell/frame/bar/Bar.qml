import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D
import "."

Item {
    anchors {
        top: parent.top
        right: parent.right
        left: parent.left
    }
    height: D.General.bar.size

    BarShape {}
}

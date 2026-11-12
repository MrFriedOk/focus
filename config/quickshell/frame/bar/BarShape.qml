import QtQuick
import qs.data as D
import QtQuick.Shapes
import Quickshell

Shape {
    id: root
    //property real barHeight: D.General.bar.size
    height: D.General.bar.size
    anchors {
        left: parent.left
        right: parent.right
    }
    property real gap: D.General.bar.gap

    ShapePath {
        id: path
        fillColor: D.Theme.surface
        startX: root.gap
        startY: root.height
        strokeWidth: -1

        PathLine {
            x: root.width
            y: path.startY
        }
    }
}

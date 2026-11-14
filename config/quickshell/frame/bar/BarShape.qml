import QtQuick
import QtQuick.Shapes
import Quickshell
import qs.data as D

Shape {
    id: root

    property real gap: D.General.bar.gap
    property real radius: D.General.radius

    //property real barHeight: D.General.bar.size
    height: D.General.bar.size

    anchors {
        left: parent.left
        right: parent.right
    }

    ShapePath {
        id: path

        fillColor: D.Theme.surfaceVar
        startX: root.gap // - root.radius
        startY: root.height
        strokeWidth: -1

        PathArc {
            x: root.gap
            y: root.height - root.radius
            radiusX: root.radius
            radiusY: root.radius
            direction: PathArc.Clockwise
        }

        PathLine {
            y: 0
            x: root.gap
        }

        PathLine {
            y: 0
            x: root.width
        }

        PathLine {
            x: root.width
            y: root.height
        }

    }

}

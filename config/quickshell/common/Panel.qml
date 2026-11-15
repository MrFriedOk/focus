import QtQuick
import QtQuick.Shapes
import Quickshell
import qs.data as D

Item {
    id: root

    property real length: 100
    property real thick: 30
    property bool side: false
    readonly property real radius: D.General.radius
    readonly property real gap: D.General.gap

    implicitWidth: side ? thick : length
    implicitHeight: side ? length : thick

    anchors {
        verticalCenter: side ? parent.verticalCenter : false
        //verticalCenterOffset: root.gap
        //horizontalCenterOffset: root.gap
        horizontalCenter: side ? false : parent.horizontalCenter
    }

    Shape {
        anchors {
            fill: parent
        }

        ShapePath {
            readonly property real r: Math.max(0, Math.min(root.radius, (root.thick - root.gap) / 2, root.length / 2))

            strokeWidth: -1
            fillColor: D.Theme.surfaceVar
            startX: -r //0 + root.radius
            startY: root.gap

            PathArc {
                x: 0
                y: root.gap + r
                radiusX: r
                radiusY: r
                direction: PathArc.Clockwise
            }

            PathLine {
                y: root.thick - r
                x: 0
            }

            PathLine {
                y: root.thick
                x: root.length
            }

            PathLine {
                y: root.gap
                x: root.length
            }

        }

    }

}

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

    Rectangle {
        anchors.fill: parent
    }

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
            id: path

            readonly property real r: root.radius //Math.max(0, Math.min(root.radius, (root.thick - root.gap) / 2, root.length / 2))

            startX: 0 //-path.r //-path.r //0 + root.radius
            startY: root.gap //root.gap + path.r
            strokeWidth: -1
            fillColor: D.Theme.surfaceVar

            PathArc {
                x: 0 - path.r
                y: path.r - root.gap
                radiusX: path.r
                radiusY: path.r
                direction: PathArc.Clockwise
            }

            PathLine {
                y: root.thick + path.r
                x: 0 - path.r
            }

            PathLine {
                y: root.thick
                x: root.length
            }

            PathLine {
                y: root.gap
                x: root.length - path.r
            }

            PathArc {
                radiusX: path.r
                radiusY: path.r
                x: root.length + path.r
                y: root.gap + path.r
                direction: PathArc.Counterclockwise
            }

        }

    }

}

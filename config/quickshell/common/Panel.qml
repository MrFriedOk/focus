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

    Rectangle {
        anchors.fill: parent
        color: "transparent"
    }

    Shape {
        anchors {
            fill: parent
        }

        ShapePath {
            strokeWidth: -1
            fillColor: D.Theme.surfaceVar
            startX: 0
            startY: root.gap

            PathLine {
                y: root.thick
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

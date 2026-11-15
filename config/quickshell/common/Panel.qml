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
        verticalCenterOffset: root.gap
        horizontalCenterOffset: root.gap
        horizontalCenter: side ? false : parent.horizontalCenter
    }

    Rectangle {
        anchors.fill: parent
    }

    Shape {
        ShapePath {
        }

    }

}

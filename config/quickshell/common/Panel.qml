import Quickshell
import qs.data
import QtQuick
import QtQuick.Shapes
import QtQml

Shape {
    id: root

    enum Side {
        Top,
        Bottom,
        Left,
        Right
    }

    property int side: Panel.Left

    property bool vertical: Panel.Right || Panel.Left

    property real size: 100

    property real corner: D.General.radius
    property real fillet: D.General.radius

    property real startX: 0
    property real startY: 0

    ShapePath {
        startX: root.startX
        startY: root.startY
    }
}

import Quickshell
import qs.data as D
import QtQuick
import QtQuick.Shapes
import QtQml

Item {
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

    rotation: [0, 180, 270, 90][root.side]

    Shape {
        id: shape

        ShapePath {
            startX: root.startX
            startY: root.startY
        }

    }

}

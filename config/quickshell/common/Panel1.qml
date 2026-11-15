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
    //property real size: 100
    property real length: 400
    property real thickness: 50
    property real corner: D.General.radius
    property real fillet: D.General.radius
    property real startX: D.General.bar.gap //vertical ? D.General.bar.gap :
    property real startY: D.General.bar.gap //vertical ?

    rotation: 270 //[0, 180, 270, 90][root.side]
    implicitWidth: vertical ? thickness : length
    implicitHeight: vertical ? length : thickness

    Shape {
        id: shape

        anchors {
            fill: parent
        }

        ShapePath {
            startX: root.startX
            startY: root.startY

            PathLine {
            }

        }

    }

}

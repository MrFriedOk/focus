import QtQuick.Shapes
import QtQuick
import Quickshell
import qs.data as D
import qs.common as C

Item {
    width: 100

    anchors {
        top: parent.top
        bottom: parent.bottom
        bottomMargin: 3
        topMargin: 3
    }

    C.SequentialText {
        text: "cpu"
        color: D.Theme.primary
    }

    Shape {
        //x axis
        id: shapeX

        anchors {
            fill: parent
        }

        ShapePath {
            id: pathX

            startX: 0
            startY: shapeX.height
            strokeColor: D.Theme.primary
            strokeWidth: 2

            PathLine {
                x: shapeX.width
                y: pathX.startY
            }

        }

    }

    Shape {
        //y axis
        id: shapeY

        anchors {
            fill: parent
        }

        ShapePath {
            id: pathY

            startX: 0
            startY: shapeY.height
            strokeColor: D.Theme.primary
            strokeWidth: 2

            PathLine {
                x: pathY.startX
                y: 0
            }

        }

    }

}

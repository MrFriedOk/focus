import QtQuick.Shapes
import QtQuick
import Quickshell
import qs.data as D
import qs.common as C

Item {
    id: root

		property alias text: text.text
		property list<real> hist: []
		property bool delta: true

    width: 100

    anchors {
        top: parent.top
        bottom: parent.bottom
        bottomMargin: 3
        topMargin: 3
    }

    C.SequentialText {
        id: text

        text: "placeholder"
        color: D.Theme.primary
        verticalAlignment: Text.AlignVCenter

        anchors {
            fill: parent
        }

    }

    Shape {
        id: graph

        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }

        ShapePath {
            strokeColor: D.Theme.primaryOn
            strokeWidth: 2

						PathPolyline {
							path: {
								if (root.delta)
								root.hist.map((v, i) => {return Qt.point(i * (root.width / 59), root.height * (1 - v));})
								else 
								root.hist.map((v,i) => Qt.point(i*root.width/59,graph.height*(1-v)))
							}
            }

        }

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

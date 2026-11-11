import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.common as C
import qs.data as D

C.Dragable {
    id: clock
    readonly property string mins: String(D.Time.mins).padStart(2, "0")
    readonly property string hrs: String(D.Time.hrs).padStart(2, "0")
    readonly property int padding: 10

    store: D.Moving.clock //where the Dragable access info
    implicitWidth: 200 //+ (progress * 8) //shape.width
    implicitHeight: col.content //+ (progress * 8) //shape.height

    Shape {
        id: shape
        anchors {
            centerIn: parent
        }
        width: Math.round((parent.width + (clock.progress * 8)) / 2) * 2
        height: Math.round((parent.height + (clock.progress * 8)) / 2) * 2

        //width: col.width + clock.padding + (clock.progress * 100)
        //height: col.implicitHeight + clock.padding
        ShapePath {
            id: path
            strokeWidth: -1
            fillColor: D.Theme.surfaceVar
            startX: 0
            startY: 0
            PathLine {
                x: path.startX
                y: path.startY
            }
            PathLine {
                x: shape.width
                y: path.startY
            }
            PathLine {
                x: shape.width
                y: shape.height
            }
            PathLine {
                x: path.startX
                y: shape.height
            }
        }
    }
    Column {
        id: col
        readonly property int content: hrsTxt.implicitHeight + minsTxt.implicitHeight
        readonly property color color: D.Theme.surfaceVarOn
        //width: content
        anchors {
            fill: parent
        }
        Text {
            id: hrsTxt
            anchors {
                left: parent.left
                right: parent.right
            }
            horizontalAlignment: Text.AlignHCenter
            //top, hours
            text: clock.hrs

            font {
                family: D.General.font.family
                pointSize: 96
                bold: true
            }
            color: col.color
        }
        Text {
            id: minsTxt
            anchors {
                left: parent.left
                right: parent.right
            }

            horizontalAlignment: Text.AlignHCenter
            //bottom, mins
            text: clock.mins

            font {
                family: D.General.font.family
                pointSize: 96
                bold: true
            }
            color: col.color
        }
        anchors {
            fill: parent
        }
    }
}

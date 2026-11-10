import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.common as C
import qs.data as D

C.Dragable {
    id: clock
    readonly property string mins: String(D.Time.mins).padStart(2, "0")
    readonly property string hrs: String(D.Time.hrs).padStart(2, "0")
    readonly property int padding: 30
    store: D.Moving.clock
    width: shape.width
    height: shape.height

    Shape {
        id: shape
        anchors {
            fill: parent
        }
        width: col.implicitWidth + clock.padding
        height: col.implicitHeight
        ShapePath {
            id: path
            strokeWidth: -1
            fillColor: D.Theme.surface
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
        Column {
            id: col
            readonly property int content: hrsTxt.implicitWidth + minsTxt.implicitWidth
            implicitWidth: content
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
                }
                color: D.Theme.primary
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
                }
                color: D.Theme.primary
            }
            anchors {
                fill: parent
            }
        }
    }
}

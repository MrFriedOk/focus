import Quickshell
import QtQuick
import qs.common as C
import qs.data as D

C.Dragable {
    id: clock
    readonly property string mins: String(D.Time.mins).padStart(2, "0")
    readonly property string hrs: String(D.Time.hrs).padStart(2, "0")
    store: D.Moving.clock
    width: col.implicitWidth
    height: col.implicitHeight

    Column {
        id: col
        anchors {
            fill: parent
        }
        Text {
            //top, hours
            text: clock.hrs

            font {
                family: D.General.font.family
                pointSize: 96
            }
            color: D.Theme.fg
        }
        Text {
            //bottom, mins
            text: clock.mins

            font {
                family: D.General.font.family
                pointSize: 96
            }
            color: D.Theme.fg
        }
        anchors {
            fill: parent
        }
    }
}

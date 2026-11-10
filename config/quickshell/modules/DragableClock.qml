import Quickshell
import QtQuick
import qs.common as C
import qs.data as D

C.Dragable {
    id: clock
    readonly property int mins: D.Time.mins
    readonly property int hrs: D.Time.hrs
    store: D.Moving.clock
    width: 200
    height: 200

    Item {
        Text {
            text: 'hi'
            anchors {
                fill: parent
            }

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

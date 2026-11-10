import Quickshell
import QtQuick
import qs.common as C
import qs.data as D

C.Dragable {
    store: D.Moving.clock
    width: 200
    height: 200

    Item {
        Text {
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

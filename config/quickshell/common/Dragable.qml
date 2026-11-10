import Quickshell
import QtQuick
import qs.data as D

Scope {
    id: root
    property int width: 0
    property int height: 0
    Item {
        x: D.Moving.clock.x
        width: root.width
        height: root.height
        y: D.Moving.clock.y
        Rectangle {
            anchors {
                fill: parent
            }
        }
    }
}

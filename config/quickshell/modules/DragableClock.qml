import Quickshell
import QtQuick
import qs.data as D

Item {
    x: D.Moving.clock.x
    y: D.Moving.clock.y
    width: 100
    height: 100
    Rectangle {
        anchors {
            fill: parent
        }
    }
}

import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Io

Item {
    id: root
    readonly property var bars: D.Cava.bars

    Timer {
        interval: 1000
        onTriggered: console.log(D.Cava.bars)
        running: true
        repeat: true
    }

    anchors {
        fill: parent
    }
    Row {
        spacing: 1
        //visualizer
        anchors {
            bottom: parent.bottom
        }
        Repeater {
            model: root.bars

            delegate: Rectangle {
                required property var modelData
                width: 1000 / (root.bars.length)
                height: 1000
            }
        }
    }
}

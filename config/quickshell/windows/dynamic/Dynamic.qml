import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Io

Item {
    id: root
    property var bars: D.Cava.bars

    Timer {
        //debug
        onTriggered: console.log(root.bars)
        interval: 1000
        repeat: true
        running: false
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
                color: D.Theme.primary
                required property var modelData
                width: 1000 / (root.bars.length)
                height: 5
            }
        }
    }
}

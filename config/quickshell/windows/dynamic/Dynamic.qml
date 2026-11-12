import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Io

Item {
    id: root
    readonly property var bars: D.Cava.bars

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
                width: 100 / (root.bars.length)
                height: 1000
            }
        }
    }
}

import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Io

Item {
    id: root
    property var bars: D.Cava.bars
    //property list<string> bars: []
    readonly property string config: Quickshell.shellPath("data/config/cava.conf")
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

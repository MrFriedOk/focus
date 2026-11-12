import Quickshell
import QtQuick
import qs.data as D

Item {
    id: root
    readonly property list<string> bars: D.Cava.bars
    anchors {
        fill: parent
    }
    Rectangle {
        anchors.fill: parent
    }
    Row {
        spacing: 1
        //visualizer
        anchors {
            fill: parent
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

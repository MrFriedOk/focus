import Quickshell
import QtQuick
import qs.data as D

Item {
    id: root
    readonly property list<string> bars: D.Cava.bars
    anchors {
        fill: parent
    }
    Row {
        //visualizer
        anchors {
            fill: parent
        }
        Repeater {
            model: root.bars
        }
    }
}

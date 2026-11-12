import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Io

Item {
    id: root
    //property var bars: D.Cava.bars

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
    Loader {
        active: false
        Row {
            spacing: 1
            //visualizer
            anchors {
                fill: parent
            }
            Repeater {
                model: root.bars

                delegate: Rectangle {
                    anchors {
                        bottom: parent.bottom
                    }
                    //x: D.General.bar.gap
                    color: D.Theme.primary
                    radius: D.General.radius
                    required property var modelData
                    width: 1600 / (root.bars.length)
                    height: 5 * modelData
                    y: D.General.bar.gap
                }
            }
        }
    }
}

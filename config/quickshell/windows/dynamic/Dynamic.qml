import Quickshell
import QtQuick
import qs.data as D
import Quickshell.Io

Item {
    id: root
    //property list<string> bars: D.Cava.bars
    property list<string> bars: []
    readonly property string config: Quickshell.shellPath("data/config/cava.conf")
    Process {
        running: true
        command: ["cava", "-p", root.config]//root.config]

        stdout: SplitParser {
            onRead: d => {
                console.log("cava:", d.slice(0, 60));
                return root.bars = d.split(";").filter(s => {
                    return s !== "";
                }).map(Number);
            }
        }
        stderr: SplitParser {
            onRead: d => console.log("cava err:", d)
        }
        onExited: (code, status) => console.log("cava exited", code, status)
    }

    Timer {
        interval: 1000
        onTriggered: console.log(root.bars)
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

pragma Singleton
import Quickshell.Io
import Quickshell
import QtQuick

Singleton {
    id: root
    property var bars: []

    readonly property string config: Quickshell.shellPath("data/config/cava.conf")
    Process {
        running: true
        command: {
            ["cava", "-p", root.config];
            console.log(root.config);
        }

        stdout: SplitParser {
            onRead: d => {
                return root.bars = d.split(";").filter(s => {
                    s !== "";
                }).map(Number);
            }
        }
    }
}

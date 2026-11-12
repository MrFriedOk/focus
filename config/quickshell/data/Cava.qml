pragma Singleton
import Quickshell.Io
import Quickshell
import QtQuick

Singleton {
    id: root
    property var bars: []

    readonly property var config: Quickshell.shellPath("data/config/cava.conf")
    Process {
        running: true
        command: ["cava", "-p", root.config]

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
}

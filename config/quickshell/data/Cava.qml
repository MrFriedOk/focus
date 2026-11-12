pragma Singleton
import Quickshell.Io
import Quickshell
import QtQuick

Singleton {
    id: root
    property list<string> bars: []

    readonly property string config: Quickshell.shellPath("data/config/cava.conf")
    Process {
        running: true
        command: ["cava", "-p", root.config]//root.config]

        stdout: SplitParser {
            onRead: d => {
                console.log("cava:", d.slice(0, 60));
                root.bars = d.split(";").filter(s => {
                    s !== "";
                }).map(Number);
            }
        }
        stderr: SplitParser {
            onRead: d => console.log("cava err:", d)
        }
        onExited: (code, status) => console.log("cava exited", code, status)
    }
}

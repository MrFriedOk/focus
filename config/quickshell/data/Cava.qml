pragma Singleton
import Quickshell.Io
import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property string config: Quickshell.shellPath("data/config/cava.conf")
    property list<string> bars: []
    Process {
        running: true
        command: ["cava", "-p", root.config]

        stdout: SplitParser {
            onRead: d => root.bars = d.split(";").filter(s => s !== "").map(Number)
        }
    }
}

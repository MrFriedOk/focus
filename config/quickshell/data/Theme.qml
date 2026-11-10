pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Io

Singleton {
    id: root
    readonly property string path: Quickshell.shellPath("data/json/md3Palette.json")
    //readonly property string json: JSON.parse(path)
    readonly property color surface: json.md3.surface
    readonly property color surfaceContainer: "#171a30"
    //readonly property color onSurface: "#dfe6ff"
    readonly property color primary: "#7aa2ff"
    //readonly property color onPrimary: "#0e1020"
    readonly property color outline: "#4a5080"

    FileView {
        id: file
        path: root.path
    }
}

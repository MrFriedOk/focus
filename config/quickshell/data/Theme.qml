pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Io

Singleton {
    id: root
    readonly property string path: Quickshell.shellPath("data/json/md3Palette.json")
    property var json: null
    readonly property color surface: "#ffffff"
    readonly property color surfaceContainer: "#171a30"
    //readonly property color onSurface: "#dfe6ff"
    readonly property color primary: "#7aa2ff"
    //readonly property color onPrimary: "#0e1020"
    readonly property color outline: "#4a5080"

    FileView {
        id: file
        path: root.path
        blockLoading: true //run at startup

        onLoaded: {
            try {
                //file.data = JSON.parse(file.text());
                root.json = file.data();
            } catch (err) {
                console.warn("couldn't parse", path, err);
            }
        }
    }
}

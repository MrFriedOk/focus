pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    function save() {
        file.writeAdapter();
    }
    property QtObject clock: QtObject {
        property alias x: clock.x
        property alias y: clock.y
    }
    FileView {
        id: file
        path: "json/moving.json"

        watchChanges: true
        onFileChanged: reload()

        JsonAdapter {
            id: adapter

            property JsonObject clock: JsonObject {
                id: clock
                property int x: 500
                property int y: 500
            }
        }
    }
}

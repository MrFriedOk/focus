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
    Timer {
        interval: 250
        running: true
        repeat: true
        onTriggered: console.log(clock.x, clock.y)
    }
    FileView {
        id: file
        path: "json/moving.json"

        watchChanges: true
        onFileChanged: reload()
        //onAdapterUpdated: writeAdapter()

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

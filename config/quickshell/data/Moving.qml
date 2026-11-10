pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    property alias x: clockAdapter.x
    property alias y: clockAdapter.y
    property QtObject clock: QtObject {}
    Timer {
        interval: 250
        running: true
        repeat: true
        onTriggered: console.log(clock.x, clock.y)
    }
    FileView {
        path: "json/moving.json"

        watchChanges: true
        onFileChanged: reload()
        onAdapterUpdated: writeAdapter()

        JsonAdapter {
            id: clockAdapter

            property JsonObject clock: JsonObject {
                property int x: 500
                property int y: 500
            }
        }
    }
}

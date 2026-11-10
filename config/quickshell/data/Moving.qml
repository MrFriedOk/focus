pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    property QtObject clock: QtObject {
        property int x: 500
        property int y: 500

        FileView {
            path: "json/moving.json"

            whatchChanges: true
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
    Timer {
        interval: 250
        running: true
        repeat: true
        onTriggered: console.log(clock.x, clock.y)
    }
}

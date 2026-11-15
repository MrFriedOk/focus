pragma Singleton
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Services.Pipewire
import QtQuick

Singleton {
    //}
    //readonly property QtObject
    //p: QtObject {

    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink
    property real vol: sink?.audio?.volume ?? 0 //fallbacks n stuff

    //bind just default node for now
    PwObjectTracker {
        objects: root.sink
			}



}

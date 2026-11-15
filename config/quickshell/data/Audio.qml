pragma Singleton
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Services.Pipewire
import QtQuick

Singleton {
    //}

    id: root

    //readonly property QtObject
    //p: QtObject {
    readonly property PwNode sink: Pipewire.defaultAudioSink
    property real vol: sink.audio.volume

    Timer {
        running: true
        repeat: true
        onTriggered: console.log(root.vol, root.sink)
        interval: 1000
    }

}

pragma Singleton
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Services.Pipewire
import QtQuick

Singleton {
    readonly property QtObject
    p: QtObject {
        readonly property PwNode sink: Pipewire.defaultAudioSink
        property real vol: sink.audio.volume
    }

}

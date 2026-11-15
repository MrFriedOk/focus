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
    property real vol: sink?.audio?.volume ?? 0 //fallbacks n stuff (well not really, me)

    //bind just default node for now but for safety, check it exists 
    PwObjectTracker {
			objects: root.sink ? [root.sink] : []
			}

			function setVol(v: real): void {
				console.log(v)
		if (sink?.audio)
		if (v > 0)
		sink.audio.volume += 0.01;
		else 
		sink.audio.volume -= 0.01
	}
}

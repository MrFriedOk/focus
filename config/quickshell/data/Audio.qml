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
		if (sink?.audio)
		console.log("hi");
		sink.audio.volume = Math.max(0,Math.min(1,v));
	}
}

import qs.data as D
import qs.common as C
import QtQuick
import Quickshell

C.Gauge {
    id: root

    property real volume: D.Audio.vol

    text: "hi"
    progress: volume.toFixed(2) //D.Audio.vol.toFixed(2)
    width: 100

    Timer {
        running: true
        repeat: true
        onTriggered: console.log(root.volume, root.progress)
        interval: 1000
    }

    anchors {
        top: parent.top
        bottom: parent.bottom
    }

}

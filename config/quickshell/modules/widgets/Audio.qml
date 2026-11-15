import qs.data as D
import qs.common as C
import QtQuick
import Quickshell

C.Gauge {
    id: root

    readonly property real volume: D.Audio.vol

    text: "vol " + (Math.round(volume.toFixed(2) * 100)) + "%"
    progress: volume.toFixed(2)
    //D.Audio.vol.toFixed(2)
    width: 100
    highCol: "#e0ad4d"
    lowCol: "#e0cd4d"

    anchors {
        top: parent.top
        bottom: parent.bottom
        margins: 2
    }

}

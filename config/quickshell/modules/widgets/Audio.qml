import qs.data as D
import qs.common as C
import QtQuick
import Quickshell

C.Gauge {
    id: root

    readonly property real volume: D.Audio.vol

    //text: "iuwhguigh"
    progress: volume.toFixed(2)
    //D.Audio.vol.toFixed(2)
    width: 100

    anchors {
        top: parent.top
        bottom: parent.bottom
    }

}

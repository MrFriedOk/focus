import qs.data as D
import qs.common as C
import QtQuick
import Quickshell

C.Gauge {
    progress: D.Audio.p.vol
    width: 100

    anchors {
        top: parent.top
        bottom: parent.bottom
    }

}

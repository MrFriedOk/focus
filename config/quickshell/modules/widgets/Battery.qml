import QtQuick
import Quickshell
import qs.common as C
import qs.data as D

C.Gauge {
    width: 100
    progress: D.Upower.progress

    anchors {
        top: parent.top
        bottom: parent.bottom
        margins: 2
    }

}

import QtQuick
import Quickshell
import qs.common as C
import qs.data as D

C.Gauge {
    width: 100
    progress: D.Upower.progress
    lowCol: {
        if (progress > 0.6)
            return "#92c78f";

    }
    highCol: {
        "#b0c079";
    }

    anchors {
        top: parent.top
        bottom: parent.bottom
        margins: 2
    }

}

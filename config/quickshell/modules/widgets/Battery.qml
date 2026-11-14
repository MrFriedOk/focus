import QtQuick
import Quickshell
import qs.common as C
import qs.data as D

C.Gauge {
	id: root
	property list<string> texts: [(D.Upower.progress.toFixed(2) * 100) + "%",D.Upower.device.state]
	property string curText: texts[0]

	

    width: 100
    progress: D.Upower.progress
    lowCol: {
        if (progress > 0.6)
            return "#92c78f";

        if (progress < 0.3)
            return "#eea277";
        else
            return "#b0c079";
    }
    highCol: {
        if (progress > 0.6)
            return "#b0c079";

        if (progress < 0.3)
            return "#f7989a";
        else
            return "#eea277";
    }

    C.SequentialText {
        text: root.curText
    }

    anchors {
        top: parent.top
        bottom: parent.bottom
        margins: 2
    }

}

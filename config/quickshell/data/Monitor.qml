pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

Singleton {

	property real cpu: 0
	property list<real> cpuHist: []

    FileView {
        id: stats

        path: "/proc/stat"
    }

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            stats.reload();
        }
    }

}

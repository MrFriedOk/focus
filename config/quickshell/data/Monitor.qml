pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
	id: root
	function cpuUpdate() {
					cpuF.reload();
					const f = cpuF.text().split("\n")[0].trim().split(/\s+/).slice(1).map(Number)

            const idle = f[3] + f[4]                       // idle + iowait
            const total = f.reduce((a, b) => a + b, 0)
            const dTotal = total - root._prevTotal
            const dIdle = idle - root._prevIdle
            if (dTotal > 0) root.cpu = 1 - dIdle / dTotal
            root._prevTotal = total
            root._prevIdle = idle
            root.cpuHist = [...root.cpuHist, root.cpu].slice(-60)
					}

	function memUpdate() {
		memF.reload()
		const total = memF.text().split("\n")[0].trim().split(/\s/).slice(1).map(Number)
		console.log(total)


	}

	property real cpu: 0
	property list<real> cpuHist: []
	property real _prevTotal: 0
	property real _prevIdle: 0

	property list<real> memHist: []
	property real mem: 0

	FileView{
		id: memF

		path: "/proc/meminfo"
	}
	
	

    FileView {
        id: cpuF

        path: "/proc/stat"
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
					root.cpuUpdate();
					root.memUpdate();
        }
    }

}

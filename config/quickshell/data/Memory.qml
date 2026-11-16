pragma Singleton
import Quickshell.Io
import Quickshell
import QtQuick

Singleton{
	property list<real> memHist: []
	property real mem: 0

	FileView{
		id: mem

		path: "/proc/meminfo"
	}
}

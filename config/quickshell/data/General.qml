pragma Singleton
import QtQuick
import Quickshell

Singleton {
    readonly property int radius: 20
    readonly property QtObject anim: QtObject {
        readonly property int dur: 120
        readonly property int durShort: 80
        readonly property int durLong: 200
        readonly property real damping: .25
    }
    readonly property QtObject bar: QtObject {
        readonly property int size: 25
        readonly property int gap: 3 //gap from bar to window edge
        readonly property int float: 0 //margins of the bar
    }
    readonly property QtObject font: QtObject {
        readonly property string family: "NMS GeoSans"
        readonly property int widPS: 10
        readonly property bool bold: false
    }
}

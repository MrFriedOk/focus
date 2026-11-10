pragma Singleton
import QtQuick
import Quickshell

Singleton {
    readonly property int gap: 3
    readonly property QtObject anim: QtObject {
        readonly property int dur: 120
        readonly property int durShort: 80
        readonly property int durLong: 200
        readonly property real damping: .25
    }
    readonly property QtObject bar: QtObject {
        readonly property int size: 20
    }
}

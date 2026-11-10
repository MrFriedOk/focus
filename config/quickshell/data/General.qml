pragma Singleton
import QtQuick
import Quickshell

Singleton {
    readonly property QtObject anim: QtObject {
        readonly property int dur: 120
        readonly property int durShort: 80
        readonly property int durLong: 200
        readonly property real damping: .25
    }
}

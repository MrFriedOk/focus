pragma Singleton
import QtQuick
import Quickshell

Singleton {
    property QtObject clock: QtObject {
        property int x: 500
        property int y: 500
    }
}

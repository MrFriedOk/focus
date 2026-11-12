import QtQuick
import qs.data as D
import QtQuick.Shapes
import Quickshell

Shape {
    id: root
    //property real barHeight: D.General.bar.size
    height: D.General.bar.size
    property real gap: D.General.bar.gap
    ShapePath {
        startX: root.gap
        startY: root.height
    }
}

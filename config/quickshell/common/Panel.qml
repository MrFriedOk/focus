import QtQuick
import QtQuick.Shapes
import Quickshell
import qs.data as D

Item {
    id: root

    property real length: 100
    property real thick: 30
    readonly property real radius: D.General.radius
    readonly property real gap: D.General.gap

    Shape {
        ShapePath {
        }

    }

}

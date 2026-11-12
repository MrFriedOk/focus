import QtQuick
import QtQuick.Shapes
import qs.data as D

Shape {
    id: frame
    anchors {
        fill: parent
    }
    preferredRendererType: Shape.CurveRenderer

    property real t: D.General.bar.gap
    property real r: D.General.radius

    ShapePath {
        fillColor: D.Theme.surface
        strokeWidth: -1
        fillRule: ShapePath.OddEvenFill

        startX: 0
        startY: 0

        PathMove {
            x: frame.t + frame.r
            y: frame.t
        }
        PathLine {}
    }
}

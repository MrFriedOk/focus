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
        fillColor: D.Theme.surfaceVar
        strokeWidth: -1
        fillRule: ShapePath.OddEvenFill

        startX: 0
        startY: 0

        PathLine {
            x: frame.width
            y: 0
        }
        PathLine {
            x: frame.width
            y: frame.height
        }
        PathLine {
            x: 0
            y: frame.height
        }
        PathLine {
            x: 0
            y: 0
        }

        PathMove {
            x: frame.t + frame.r
            y: frame.t
        }     //create new subpath, this is the hole
        PathLine {
            x: frame.width - frame.t
            y: frame.t
        }
        PathLine {
            x: frame.width - frame.t
            y: frame.height - frame.t - frame.r
        }
        PathArc {
            x: frame.width - frame.t - frame.r
            y: frame.height - frame.t
            radiusX: frame.r
            radiusY: frame.r
            direction: PathArc.Clockwise
        }
        PathLine {
            x: frame.t + frame.r
            y: frame.height - frame.t
        }
        PathArc {
            x: frame.t
            y: frame.height - frame.t - frame.r
            radiusX: frame.r
            radiusY: frame.r
            direction: PathArc.Clockwise
        }
        PathLine {
            x: frame.t
            y: frame.t
        }
    }
}

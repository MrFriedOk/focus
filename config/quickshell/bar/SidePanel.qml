import QtQuick.Shapes
import QtQuick
import qs.data as D

Shape {
    //the rendered bar
    id: bar

    property int sink: D.General.bar.sink
    property real thin: D.General.bar.gap //!(D.General.bar.gap - sink <= 0) ? D.General.bar.gap - sink : D.General.bar.gap
    property real full: hover.hovered ? root.size : thin
    Behavior on full {
        NumberAnimation {
            duration: D.General.anim.durLong
            easing.bezierCurve: [0.5, 0.0, 0.0, 1.0, 1, 1]
        }
    }
    property real fillet: root.radius
    property real corner: fillet
    property real tall: root.height

    property real size: 300 // when the extrude thing starts and stops

    property real extrudeStart: ((tall) / 2 - size)
    property real extrudeEnd: ((tall) / 2 + size)

    property real w: full - thin

    readonly property real f: Math.max(0, Math.min(fillet, w / 2))
    readonly property real c: Math.max(0, Math.min(corner, w / 2, (extrudeEnd - extrudeStart) / 2))

    preferredRendererType: Shape.CurveRenderer
    ShapePath {
        fillColor: D.Theme.surfaceVar
        strokeWidth: -1
        startX: bar.thin
        startY: bar.extrudeStart
        PathLine {
            //start
            x: bar.thin
            y: 0
        }
        PathLine {
            //top extrude
            x: bar.thin
            y: bar.extrudeStart - bar.f //always make sure to subtract fillet value, otherwise you get that stupid dent
        }
        PathArc {
            //top fillet
            x: bar.thin + bar.f //and be sure to add the same value, otherwise you get the same dent! if these are not used, you get nothing :c
            y: bar.extrudeStart
            radiusX: bar.f
            radiusY: bar.f
            direction: PathArc.Counterclockwise
        }
        PathLine {
            x: bar.full - bar.c
            y: bar.extrudeStart
        }
        PathArc {
            //top corner
            x: bar.full
            y: bar.extrudeStart + bar.c
            radiusX: bar.c
            radiusY: bar.c
            direction: PathArc.Clockwise //counter inverts it! also the default btw
        }
        PathLine {
            //bottom extrude end
            x: bar.full
            y: bar.extrudeEnd - bar.c
        }
        PathArc {
            //botom corner
            x: bar.full - bar.c
            y: bar.extrudeEnd
            radiusX: bar.c
            radiusY: bar.c
        }

        PathLine {
            //bottom extrude start
            x: bar.thin + bar.f
            y: bar.extrudeEnd
        }
        PathArc {
            //bottom fillet, yes, order of path lines matters!
            x: bar.thin
            y: bar.extrudeEnd + bar.f
            radiusX: bar.f
            radiusY: bar.f
            direction: PathArc.Counterclockwise
        }

        PathLine {
            x: bar.thin
            y: bar.tall
        }
    }
}

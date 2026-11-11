import QtQuick.Shapes
import QtQuick
import qs.data as D

ShapePath {
    fillColor: D.Theme.primaryOn
    strokeWidth: -1
    startX: 0
    startY: 0
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
    PathLine {
        //ensure the path is finished!
        x: 0
        y: bar.tall
    }
}

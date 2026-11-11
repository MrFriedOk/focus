import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D
import "panels" as P
import "."

PanelWindow {
    id: root
    readonly property int size: D.General.bar.size + gap
    readonly property int gap: D.General.bar.gap
    readonly property int float: D.General.bar.float
    readonly property int radius: D.General.radius
    readonly property list<string> panels: [""]
    //the 'master' window
    color: "transparent"
    exclusionMode: ExclusionMode.Ignore
    anchors {
        left: true
        top: true
        bottom: true
        right: true
    }

    mask: Region {
        Region {
            item: bar
        }
    }
    HoverHandler {
        id: hover
    }
    Shape {
        //the rendered bar
        id: bar
        //width: root.size
        property real thin: 5
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

        SidePanel {}
    }
}

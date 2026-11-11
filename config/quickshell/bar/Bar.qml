import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D
import "panels" as P

Scope {
    id: root
    readonly property int size: D.General.bar.size + gap
    readonly property int gap: D.General.bar.gap
    readonly property int float: D.General.bar.float
    readonly property int radius: D.General.radius
    readonly property list<string> panels: [""]

    PanelWindow {
        //fake bar
        implicitWidth: exclusiveZone
        color: "transparent"
        mask: Region {}
        exclusiveZone: root.size + gap
        anchors {
            top: true
            bottom: true
            left: true
        }
    }

    PanelWindow {
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
            Region {
                item: clockPanel
            }
        }

        Shape {
            //the rendered bar
            id: bar
            //width: root.size
            property real thin: 1
            property real full: root.size
            property real fillet: root.radius
            property real corner: 12
            property real tall: 500

            readonly property real cy: width / 2
            readonly property real yb: cy - tall / 2
            readonly property real yc: cy + tall / 2

            preferredRendererType: Shape.CurveRenderer

            P.Clock {
                id: clockPanel
            }

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
                    x: bar.thin
                    y: bar.yb - bar.fillet
                }
                PathArc {
                    x: bar.thin + bar.fillet
                    y: bar.yb
                }
                PathLine {
                    x: 0
                    y: bar.tall
                }
                PathLine {
                    x: bar.thin
                    y: bar.tall
                }
            }
        }
    }
}

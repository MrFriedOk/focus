import Quickshell
import QtQuick
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

        Rectangle {
            //the rendered bar
            id: bar
            width: root.size
            anchors {
                left: parent.left
                top: parent.top
                bottom: parent.bottom
                margins: root.float
            }
            radius: root.radius
            color: D.Theme.bg

            P.Clock {
                id: clockPanel
            }
        }
    }
}

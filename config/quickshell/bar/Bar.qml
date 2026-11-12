import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D
import "panels" as P
import "."

Scope {
    id: rootTwo //lol i'm so sorry
    property int gap: D.General.bar.gap + 1
    property int barHeight: D.General.bar.size
    property color barCol: D.Theme.surface
    PanelWindow {
        id: bar
        anchors {
            top: true
            left: true
            right: true
        }
        implicitHeight: rootTwo.gap + rootTwo.barHeight
        color: "transparent"

        mask: Region {}
    }
    PanelWindow {
        id: rightSide
        color: "transparent"
        implicitWidth: rootTwo.gap

        anchors {
            top: true
            bottom: true
            right: true
					}

        mask: Region {}
    }
    PanelWindow {
        id: leftSide
        anchors {
            left: true
            bottom: true
            top: true
        }
        implicitWidth: rootTwo.gap

				color: "transparent"


        mask: Region {}
    }
    PanelWindow {
        id: bottom

        anchors {
            bottom: true
            left: true
            right: true
        }
        color: "transparent"

				implicitHeight: rootTwo.gap

        mask: Region {}
    }
    PanelWindow {
        id: root
        readonly property int size: 500//D.General.bar.size + gap
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
                item: sideBar
            }
        }
        HoverHandler {
            id: hover
					}

				Frame{}

        SidePanel {
            id: sideBar
            size: 200
        }
    }
}

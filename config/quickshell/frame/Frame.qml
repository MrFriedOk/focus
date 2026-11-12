import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D
import "panels" as P
import qs.common as C
import "." as F

Scope {
    id: rootTwo //lol i'm so sorry
    property var screen
    property int gap: D.General.bar.gap + 1
    property int barHeight: D.General.bar.size
    property color barCol: D.Theme.surface
    PanelWindow {
        id: bar
        screen: rootTwo.screen
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
        screen: rootTwo.screen
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
        screen: rootTwo.screen
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
        screen: rootTwo.screen

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
        screen: rootTwo.screen
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

        F.Shape {}

        C.Panel {
            id: sideBar
            size: 200
        }
    }
}

import Quickshell
import QtQuick
import qs.data as D

Scope {
    id: root

    property int gap: D.General.bar.gap + 1
    property int barHeight: D.General.bar.size
    property color barCol: D.Theme.surface
    //property var screen: null
    PanelWindow {
        id: fakeBar
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
}

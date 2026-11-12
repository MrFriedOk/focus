import Quickshell
import QtQuick
import qs.data as D

Scope {
    id: root

    property var screen: null

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
        implicitHeight: root.gap + root.barHeight
        color: "transparent"

        mask: Region {}
    }
    PanelWindow {
        id: rightSide
        color: "transparent"
        implicitWidth: root.gap

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
        implicitWidth: root.gap

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

        implicitHeight: root.gap

        mask: Region {}
    }

    PanelWindow {
        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }
        exclusionMode: ExclusionMode.Ignore
        mask: Region {}
        color: "transparent"

        Shape {}
    }
}

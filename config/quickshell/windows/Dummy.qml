import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.data as D

Scope {
    id: root

    property int gap: D.General.bar.gap + 1
    property int barHeight: D.General.bar.size
    property color barCol: D.Theme.surface
    property var screen: null

    PanelWindow {
        exclusionMode: ExclusionMode.Ignore
        color: D.Theme.surface
        WlrLayershell.layer: WlrLayer.Background
        screen: root.screen

        //wallpaper/bg
        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }

    }

    PanelWindow {
        id: fakeBar

        implicitHeight: root.gap
        color: "transparent"
        screen: root.screen

        anchors {
            top: true
            left: true
            right: true
        }

        mask: Region {
        }

    }

    PanelWindow {
        id: rightSide

        color: "transparent"
        implicitWidth: root.gap
        screen: root.screen

        anchors {
            top: true
            bottom: true
            right: true
        }

        mask: Region {
        }

    }

    PanelWindow {
        id: leftSide

        implicitWidth: root.gap
        color: "transparent"
        screen: root.screen

        anchors {
            left: true
            bottom: true
            top: true
        }

        mask: Region {
        }

    }

    PanelWindow {
        id: bottom

        color: "transparent"
        implicitHeight: root.gap
        screen: root.screen

        anchors {
            bottom: true
            left: true
            right: true
        }

        mask: Region {
        }

    }

    PanelWindow {
        exclusionMode: ExclusionMode.Ignore
        color: "transparent"
        screen: root.screen

        //frame
        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }

        Shape {
        }

        mask: Region {
        }

    }

}

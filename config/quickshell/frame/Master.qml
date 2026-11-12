import Quickshell
import QtQuick
import qs.data as D
import "panels" as P
import "."
import "bar" as B
import qs.modules as M

Scope {
    PanelWindow {
        //fake bar
        anchors {
            top: true
            left: true
            right: true
        }
        color: "transparent"
        implicitHeight: D.General.bar.size - D.General.bar.gap
    }
    PanelWindow {
        id: root

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
            Region {}
        } //stop the window from blocking input

        B.Bar {
            id: bar
        }
    }
}

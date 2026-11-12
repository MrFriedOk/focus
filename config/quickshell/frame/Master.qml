import Quickshell
import QtQuick
import qs.data as D
import "panels" as P
import "."
import "bar" as B
import qs.modules as M

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
        Region {
            item: bar
        }
    } //stop the window from blocking input

    B.Bar {
        id: bar
    }
}

import Quickshell
import QtQuick
import QtQuick.Shapes
import qs.data as D
import "panels" as P
import "."

Scope {
    PanelWindow {}
    PanelWindow {}
    PanelWindow {}
    PanelWindow {}
    PanelWindow {
        id: root
        readonly property int size: 500//D.General.bar.size + gap
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

        SidePanel {
            id: bar
            size: 200
        }
    }
}

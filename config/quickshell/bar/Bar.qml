import Quickshell
import QtQuick
import qs.data as D

Scope {
    PanelWindow {
        //fake bar
        width: exclusiveZone
        color: "transparent"
        exclusiveZone: D.General.bar.size
        anchors {
            top: true
            bottom: true
            left: true
        }
    }
    PanelWindow {
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
                item: panel
            }
        }
        Item {
            id: hoverZone
            anchors {
                fill: parent
            }
            HoverHandler {
                id: hover
            }

            Rectangle {
                id: bar
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }
                width: D.General.bar.size
            }
            Rectangle {
                id: panel
                anchors {
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: bar.width
                }
                height: 100
                width: 200
                visible: hover.hovered
            }
        }
    }
}

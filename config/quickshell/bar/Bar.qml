import Quickshell
import QtQuick
import qs.data as D

Scope {
    id: root
    readonly property int size: D.General.bar.size + gap
    readonly property int gap: D.General.gap
    PanelWindow {
        //fake bar
        width: exclusiveZone
        color: "transparent"
        mask: Region {}
        exclusiveZone: root.size
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

        Rectangle {
            id: bar
            width: root.size
            anchors {
                left: parent.left
                top: parent.top
                bottom: parent.bottom
                topMargin: root.gap
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

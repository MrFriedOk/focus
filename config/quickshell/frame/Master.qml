import Quickshell
import QtQuick
import qs.data as D
import "panels" as P
import "."
import "bar" as B
import qs.modules as M
import qs.common as C

Scope {
    PanelWindow {
        color: "transparent"
        implicitHeight: D.General.bar.size - D.General.bar.gap

        //fake bar
        anchors {
            top: true
            left: true
            right: true
        }

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

        B.Bar {
            id: bar
        }

        C.Panel {
            length: 500
            thick: 20

            anchors {
                bottom: parent.bottom
                bottomMargin: D.General.bar.gap
            }

        }

        mask: Region {
            Region {
                item: bar
            }
            //stop the window from blocking input

        }

    }

}

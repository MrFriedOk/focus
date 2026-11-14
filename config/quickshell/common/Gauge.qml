import QtQuick
import Quickshell
import qs.data as D

Rectangle {
    id: root

    property real progress: 0

    color: D.Theme.primary
    radius: height * 2

    Rectangle {
        //empty status

        radius: parent.radius
        color: D.Theme.surface

        anchors {
            fill: parent
            margins: 2
        }

        Rectangle {
            //fill gradient

            radius: parent.radius
            width: parent.width * root.progress

            anchors {
                top: parent.top
                bottom: parent.bottom
            }

        }

    }

    Behavior on progress {
        NumberAnimation {
            duration: D.General.anim.dur
        }

    }

}

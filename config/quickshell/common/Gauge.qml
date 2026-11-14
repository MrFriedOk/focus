import QtQuick
import Quickshell
import qs.data as D

Rectangle {
    id: root

    property real progress: D.Upower.progress

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

            anchors {
                fill: parent
            }

        }

    }

}

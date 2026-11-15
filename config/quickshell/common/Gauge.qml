import QtQuick
import Quickshell
import qs.data as D
import "."

Rectangle {
    id: root

    property real progress: 0
    property alias text: text.text
    property color highCol: D.Theme.primaryOn
    property color lowCol: D.Theme.surfaceOn

    color: D.Theme.primary
    radius: height * 2 //Math.max(height * 2, Math.min(width, height))

    SequentialText {
        id: text

        z: 1
        color: D.Theme.surfaceVar
        text: ""

        anchors {
            fill: parent
        }

    }

    Rectangle {
        //empty status

        clip: true
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

            gradient: Gradient {
                orientation: Gradient.Horizontal

                GradientStop {
                    position: 1
                    color: root.lowCol
                }

                GradientStop {
                    position: 0
                    color: root.highCol
                }

            }

        }

    }

    Behavior on highCol {
        ColorAnimation {
            duration: D.General.anim.dur
        }

    }

    Behavior on lowCol {
        ColorAnimation {
            duration: D.General.anim.dur
        }

    }

    Behavior on progress {
        NumberAnimation {
            duration: D.General.anim.durShort
        }

    }

}

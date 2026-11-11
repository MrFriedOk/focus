import QtQuick
import qs.data as D

Text {
    id: root
    color: D.Theme.surfaceOn

    Behavior on text {
        SequentialAnimation {
            NumberAnimation {
                target: root
                property: "opacity"
                duration: D.General.anim.durLong
                to: 0
            }
            PropertyAction {}
            NumberAnimation {
                target: root
                property: "opacity"
                duration: D.General.anim.durLong
                to: 1
            }
        }
    }

    Behavior on color {
        ColorAnimation {
            duration: D.General.anim.dur
        }
    }
}

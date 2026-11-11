import QtQuick
import qs.data as D

Text {
    id: root
    color: D.Theme.surfaceOn

    property bool animate: true

    Behavior on text {
        enabled: root.animate
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
        enabled: root.animate
        ColorAnimation {
            duration: D.General.anim.dur
        }
    }
}

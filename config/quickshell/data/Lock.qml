pragma Singleton
import Quickshell
import Quickshell.Wayland
import QtQuick

Singleton {
    id: root

    //function toggle() {
    //    locked = !locked;
    //}
    function unlock() {
        enterAnim.stop();
        exitAnim.restart();
    }

    property real progress: 0
    property bool locked: false

    readonly property Animation enterAnim: NumberAnimation {
        target: root
        property: "progress"
        to: 1
        duration: 500
        easing.type: Easing.InOutQuad
    }

    readonly property Animation exitAnim: SequentialAnimation {
        NumberAnimation {
            target: root
            property: "progress"
            to: 0
            duration: 500
            easing.type: Easing.InOutQuad
        }
        ScriptAction {
            script: root.locked = false
        }
    }
}

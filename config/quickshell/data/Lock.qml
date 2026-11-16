pragma Singleton
import Quickshell
import Quickshell.Wayland
import QtQuick

Singleton {
    //locked = true;

<<<<<<< ours
    id: root

=======
>>>>>>> theirs
    property real progress: 0
    property bool locked: false
    readonly property Animation
    enterAnim: SequentialAnimation {
        NumberAnimation {
            target: root
            property: "progress"
            to: 1
            duration: 500
            easing.type: Easing.InOutQuad
        }

        ScriptAction {
            script: root.locked = true
        }

    }

    readonly property Animation
    exitAnim: SequentialAnimation {
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

    //function toggle() {
    //    locked = !locked;
    //}
    function unlock() {
<<<<<<< ours
        //enterAnim.stop();
        //exitAnim.restart();
=======
        enterAnim.stop();
>>>>>>> theirs
        exitAnim.restart();
    }

    function lock() {
<<<<<<< ours
        //exitAnim.stop();
=======
        exitAnim.stop();
        //locked = true
>>>>>>> theirs
        enterAnim.restart();
    }

}

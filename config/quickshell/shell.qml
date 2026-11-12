import Quickshell
import QtQuick
import Quickshell.Wayland
import "frame" as F
import "windows" as W
import "services" as S

ShellRoot {
    S.Lock {}
    S.Notifications {}

    F.Master {}

    //W.Background {}

    //stuff to draw every monitor, let's keep it minimal for now
    Variants {
        model: Quickshell.screens
        delegate: W.Dummy {
            required property var modelData
            screen: modelData
        }
    }
}

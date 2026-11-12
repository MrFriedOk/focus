import Quickshell
import QtQuick
import Quickshell.Wayland
import "frame" as F
import "windows" as W
import "services" as S

ShellRoot {
    Variants {
        model: Quickshell.screens
        F.Frame {
            required property var modelData
            screen: modelData
        }
    }
    S.Lock {}
    S.Notifications {}
    //stuff to draw every monitor, let's keep it minimal for now
    Variants {
        model: Quickshell.screens
        delegate: W.Background {
            required property var modelData
            screen: modelData
        }
    }
}

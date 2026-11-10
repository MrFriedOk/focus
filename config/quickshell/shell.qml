import Quickshell
import QtQuick
import Quickshell.Wayland
import "bar" as B
import "windows" as W
import "services" as S

ShellRoot {
    S.Notifications {}
    S.Lock {}
    //stuff to draw every monitor, let's keep it minimal for now
    Variants {
        model: Quickshell.screens
        delegate: W.Background {
            required property var modelData
            screen: modelData
        }
    }
    B.Bar {
        //visible: false
        WlrLayershell.layer: WlrLayer.Top
    }
}

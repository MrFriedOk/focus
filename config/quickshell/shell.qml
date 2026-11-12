import Quickshell
import QtQuick
import Quickshell.Wayland
import "frame" as F
import "windows" as W
import "services" as S

ShellRoot {
    S.Lock {}
    S.Notifications {}

    //stuff to draw every monitor, let's keep it minimal for now
    Variants {
        model: Quickshell.screens
        delegate: W.Dummy {}
    }

    //F.Master {}

    //W.Background {} //bg only for shellscreen
}

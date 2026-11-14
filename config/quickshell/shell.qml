import QtQuick
import Quickshell
import Quickshell.Wayland
import "frame" as F
import "services" as S
import "windows" as W

ShellRoot {
    S.Lock {
    }

    S.Notifications {
    }

    //stuff to draw every monitor, let's keep it minimal for now
    Variants {
        model: Quickshell.screens

        delegate: W.Dummy {
            required property var modelData

            screen: modelData
        }

    }

    F.Master {
    }
    //bg only for shellscreen

    W.Background {
    }

}

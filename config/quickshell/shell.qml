import Quickshell
import QtQuick
import "bar" as B
import "windows" as W

ShellRoot {
    Variants {
        model: Quickshell.screens
        delegate: W.Background {}
    }
}

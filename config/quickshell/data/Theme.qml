pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Io

Singleton {
    id: root
    property bool dark: true
    readonly property string path: Quickshell.shellPath("data/json/md3Palette.json")
    readonly property color surface: dark ? "#1C1B1F" : "#FFFBFE"
    readonly property color outline: "#938F99"
    readonly property color primary: "#252525"
    readonly property color secondary: "#252525"
    readonly property color tertiary: "#252525"
    readonly property color surfaceVar: dark ? "#49454F" : "#E7E0EC"
    readonly property color error: "#B00020"

    readonly property color surfaceVarOn: dark ? "#CAC4D0" : "#49454F"
    readonly property color secondaryOn: "#FFFFFF"
    readonly property color tertiaryOn: "#FFFFFF"
    readonly property color surfaceOn: dark ? "#E6E1E5" : "#1C1B1F"
    readonly property color primaryOn: "#FFFFFF"
}

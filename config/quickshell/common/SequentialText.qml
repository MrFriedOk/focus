import qs.data as D
import Quickshell
import QtQuick

Text {
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    color: D.Theme.surfaceVar

    font {
        pointSize: parent.height / 2
        bold: D.General.font.bold
        family: D.General.font.family
    }

}

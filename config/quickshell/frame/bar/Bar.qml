import "."
import "../../modules/widgets" as W
import QtQuick
import QtQuick.Shapes
import Quickshell
import QtQuick.Layouts
import qs.data as D

Item {
    height: D.General.bar.size

    anchors {
        top: parent.top
        right: parent.right
        left: parent.left
    }

    BarShape {
    }

    RowLayout {
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
            leftMargin: D.General.bar.gap
        }

        W.Audio {
        }

        W.Battery {
        }

    }

}

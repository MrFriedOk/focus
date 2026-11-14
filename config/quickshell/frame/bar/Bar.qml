import "."
import "../../modules/widgets" as W
import QtQuick
import QtQuick.Shapes
import Quickshell
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

    W.Battery {
    }

}

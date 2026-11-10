import Quickshell
import QtQuick
import qs.data as D

Item {
    id: component
    required property QtObject store
    //defaults, if none specified
    width: 100
    x: store.x
    y: store.y
    height: 100
    Rectangle {
        anchors {
            fill: parent
        }
    }
    DragHandler {
        id: drag
        target: component

        onActiveChanged: {
            if (!active) {
                D.Moving.save();
            }
        }
    }
}

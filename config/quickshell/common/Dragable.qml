import Quickshell
import QtQuick
import qs.data as D

Item {
    id: component
    x: D.Moving.clock.x
    //defaults, if none specified
    width: 100
    height: 100
    y: D.Moving.clock.y
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
                D.Moving.clock.x = component.x;
                D.Moving.clock.y = component.y;
                D.Moving.save();
            }
        }
    }
}

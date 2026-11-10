import Quickshell
import QtQuick
import qs.data as D

Item {
    id: component
    required property QtObject store
    property real progress: drag.active ? 1 : 0
    Behavior on progress {
        NumberAnimation {
            duration: 150
        }
    }

    //defaults, if none specified
    //width: 100 + (10 * progress)
    x: store.x
    y: store.y
    //height: 100 + (10 * progress)
    DragHandler {
        id: drag
        target: component

        onActiveChanged: {
            if (!active) {
                store.x = component.x;
                store.y = component.y;
                D.Moving.save();
            }
        }
    }
}

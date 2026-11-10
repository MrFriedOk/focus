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

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

        //yAxis.onActiveValueChanged: change => {
        //Math.floor(D.Moving.clock.y -= change);
        //}
        //xAxis.onActiveValueChanged: change => {
        //    Math.floor(D.Moving.clock.x -= change);
        //}
        onActiveChanged: {
            if (!active) {
                D.Moving.clock.x = component.x;
                D.Moving.clock.y = component.y;
                D.Moving.save();
            }
        }
    }
}

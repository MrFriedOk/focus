import Quickshell
import QtQuick
import Quickshell.Services.Notifications

Scope {
    NotificationServer {
        id: server

        actionsSupported: true
        imageSupported: true
        bodyMarkupSupported: false

        onNotification: notification => {
            notification.tracked = true;
        }
    }
}

import Quickshell
import QtQuick
import Quickshell.Services.Notifications

NotificationServer {
    id: server

    actionsSupported: true
    imageSupported: true
    bodyMarkupSupported: true

    onNotification: notification => {
        notification.tracked = true;
    }
}

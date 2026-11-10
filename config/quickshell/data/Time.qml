pragma Singleton
import Quickshell
import QtQuick

Singleton {
    readonly property int mins: clock.minutes
    readonly property int hrs: clock.hours
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}

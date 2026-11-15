pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Services.UPower

Singleton {
    readonly property UPowerDevice device: UPower.displayDevice
    readonly property real energy: device.energy
    readonly property real max: device.energyCapacity
    readonly property real progress: (energy / max)
    readonly property real changeRate: device.changeRate
    readonly property real full: device.timeToFull
    readonly property real empty: device.timeToEmpty
    readonly property bool isBat: device.isLaptopBattery
}

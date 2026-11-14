pragma Singleton
import QtQuick
import Quickshell.Services.UPower

Singleton {
    readonly property UPowerDevice device: displayDevice
    readonly property real energy: device.energy
    readonly property real max: device.energyCapacity
    readonly property real progress: (energy / max)
}

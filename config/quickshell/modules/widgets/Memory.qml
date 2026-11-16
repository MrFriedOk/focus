import Quickshell
import QtQuick
import qs.common as C
import qs.data as D

C.Graph {
    hist: D.Monitor.memHist
    text: "mem"
}

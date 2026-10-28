import QtQuick
import Quickshell
import Quickshell.Io

Item {
  Process {
    id: toggleProcess
    command: ["gio", "open", "wox://toggle"]
  }

  IpcHandler {
    target: "io.github.wox-launcher.wox"

    function toggle(): void {
      if (!toggleProcess.running) toggleProcess.running = true
    }
  }
}

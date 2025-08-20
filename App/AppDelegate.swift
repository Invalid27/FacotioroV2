import Cocoa

// MARK: - App Delegate
@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var windowController: WindowController?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        windowController = WindowController()
        windowController?.showWindow(nil)
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

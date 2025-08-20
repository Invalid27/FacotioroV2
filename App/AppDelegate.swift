import Cocoa

// MARK: - App Delegate
@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var windowController: WindowController?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        windowController = WindowController(window: nil)  // Add 'window: nil'
        windowController?.showWindow(nil)
        windowController?.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

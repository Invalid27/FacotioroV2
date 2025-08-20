import Cocoa

// MARK: - App Delegate
@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var windowController: WindowController?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        windowController = WindowController()
        windowController?.showWindow(nil)
        
        // Add this to ensure the window comes to front
        windowController?.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

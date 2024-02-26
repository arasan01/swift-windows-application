import Foundation
import WinAppSDK
import WindowsFoundation
import WinUI
import ComposableArchitecture

@main
public class PreviewApp: SwiftApplication {
    /// A required initializer for the application. Non-UI setup for your application can be done here.
    /// Subscribing to unhandledException is a good place to handle any unhandled exceptions that may occur
    /// in your application.
    public required init() {
        super.init()
        unhandledException.addHandler { (_, args:UnhandledExceptionEventArgs!) in
            print("Unhandled exception: \(args.message)")
        }
    }

    /// onShutdown is called once Application.start returns. This is a good place to do any cleanup
    /// that is necessary for your application before it terminates.
    override public func onShutdown() {    }

    /// onLaunched is called when the application is launched. This is the main entry point for your
    /// application and when you can create a window and display UI.s
    override public func onLaunched(_ args: WinUI.LaunchActivatedEventArgs) {
        let window = Window()
        window.title = "WinUI3AnimationsPreview"

        try! window.activate()
        let counterStore = Store(
            initialState: Counter.State(),
            reducer: { Counter() }
        )
        let counterView = CounterView(store: counterStore)
        let panel = StackPanel()
        panel.orientation = .vertical
        panel.spacing = 10
        panel.horizontalAlignment = .center
        panel.verticalAlignment = .center
        panel.children.append(counterView)
        window.content = panel
    }
}

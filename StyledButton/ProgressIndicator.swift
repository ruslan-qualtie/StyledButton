import SwiftUI

struct ProgressIndicator: NSViewRepresentable {
    var color: NSColor

    func makeNSView(context: NSViewRepresentableContext<ProgressIndicator>) -> NSProgressIndicator {
        let result = NSProgressIndicator()
        result.style = .spinning
        result.isIndeterminate = true
        result.startAnimation(nil)

        return result
    }

    func updateNSView(_ nsView: NSProgressIndicator, context: NSViewRepresentableContext<ProgressIndicator>) {
        nsView.set(clampColor: color)
        // nsView.set(polynomialColor: color)
    }
}

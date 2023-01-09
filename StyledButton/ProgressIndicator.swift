import SwiftUI

#if os(macOS)

struct ProgressIndicator: NSViewRepresentable {
    var color: Color

    func makeNSView(context: NSViewRepresentableContext<ProgressIndicator>) -> NSProgressIndicator {
        let result = NSProgressIndicator()
        result.style = .spinning
        result.isIndeterminate = true
        result.startAnimation(nil)

        return result
    }

    func updateNSView(_ nsView: NSProgressIndicator, context: NSViewRepresentableContext<ProgressIndicator>) {
        nsView.set(polynomialColor: NSColor(color))
    }
}

#elseif os(iOS)

struct ProgressIndicator: UIViewRepresentable {
    var color: Color

    func makeUIView(context: UIViewRepresentableContext<ProgressIndicator>) -> UIActivityIndicatorView {
        let result = UIActivityIndicatorView(style: .large)
        result.alpha = 0.5
        result.startAnimating()

        return result
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ProgressIndicator>) {
        uiView.color = UIColor(color)
    }
}

#endif

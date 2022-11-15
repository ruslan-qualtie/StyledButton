import SwiftUI

struct ButtonLabelDefaultStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .semibold))
            .padding()
            .contentShape(Rectangle())
    }
}

extension View {
    func buttonLabelDefaultStyle() -> some View {
        modifier(
            ButtonLabelDefaultStyle()
        )
    }
}

struct ButtonLabelSmallStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .semibold))
            .padding(8)
            .contentShape(Rectangle())
    }
}

extension View {
    func buttonLabelSmallStyle() -> some View {
        modifier(
            ButtonLabelSmallStyle()
        )
    }
}

import SwiftUI

enum ButtonLabelContentSize {
    case small
    case medium
    case large
}

enum ButtonLabelContentMode {
    case hug
    case fill
}

struct ButtonLabelStyle: ViewModifier {
    let contentSize: ButtonLabelContentSize
    let contentMode: ButtonLabelContentMode

    private var fontSize: CGFloat {
        switch contentSize {
        case .small:
            return 12
        case .medium:
            return 14
        case .large:
            return 16
        }
    }

    private var verticalPadding: CGFloat {
        switch contentSize {
        case .small:
            return 8
        case .medium:
            return 12
        case .large:
            return 16
        }
    }

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 16)
            .padding(.vertical, verticalPadding)
            .font(.system(size: fontSize, weight: .semibold))
            .contentMode(contentMode)
            .contentShape(Rectangle())
    }
}

extension View {
    func buttonLabelStyle(_ size: ButtonLabelContentSize, _ mode: ButtonLabelContentMode) -> some View {
        modifier(
            ButtonLabelStyle(contentSize: size, contentMode: mode)
        )
    }
}

extension View {
    @ViewBuilder func contentMode(_ contentMode: ButtonLabelContentMode) -> some View {
        switch contentMode {
        case .hug:
            self
        case .fill:
            self.frame(maxWidth: .infinity)
        }
    }
}

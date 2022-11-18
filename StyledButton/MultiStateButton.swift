import SwiftUI

enum ButtonContentSize {
    case small
    case medium
    case large
}

enum ButtonContentMode {
    case hug
    case fill
}

struct MultiStateButton: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    @State private var isHovering = false
    private var parameters: MultiStateButtonParameters
    private var contentSize: ButtonContentSize
    private var contentMode: ButtonContentMode

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

    init(
        _ parameters: MultiStateButtonParameters,
        _ contentSize: ButtonContentSize,
        _ contentMode: ButtonContentMode
    ) {
        self.parameters = parameters
        self.contentSize = contentSize
        self.contentMode = contentMode
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 16)
            .padding(.vertical, verticalPadding)
            .font(.system(size: fontSize, weight: .semibold))
            .contentMode(contentMode)
            .contentShape(Rectangle())
            .onHover(perform: updateHovering(onHover:))
            .foregroundColor(isEnabled ? parameters.foregroundDefaultColor : parameters.foregroundDisabledColor)
            .background(backgroundColor(isPressed: configuration.isPressed))
            .cornerRadius(8)
    }

    private func backgroundColor(isPressed: Bool) -> Color {
        if !isEnabled {
            return parameters.backgroundDefaultColor.opacity(0.3)
        }
        if isPressed {
            return parameters.backgroundActiveColor
        }
        return isHovering ? parameters.backgroundHoverColor : parameters.backgroundDefaultColor
    }

    private func updateHovering(onHover: Bool) {
        withAnimation(.easeOut(duration: 0.05)) {
            isHovering = onHover
        }
    }
}

extension View {
    @ViewBuilder func contentMode(_ contentMode: ButtonContentMode) -> some View {
        switch contentMode {
        case .hug:
            self
        case .fill:
            self.frame(maxWidth: .infinity)
        }
    }
}

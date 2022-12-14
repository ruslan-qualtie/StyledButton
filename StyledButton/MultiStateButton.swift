import SwiftUI

enum ButtonContentSize: CaseIterable {
    case small
    case medium
    case large
}

enum ButtonContentMode:  Equatable {
    case hug
    case fixed(width: CGFloat)
    case fill
}

struct MultiStateButton: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    @State private var isHovering = false
    private var parameters: MultiStateButtonParameters
    private var contentSize: ButtonContentSize
    private var contentMode: ButtonContentMode
    private var iconPosition: ButtonLabelIconPosition
    
    private var isHugIconButton: Bool {
        iconPosition == .onlyIcon && contentMode == .hug
    }
    
    private var font: Font {
        switch contentSize {
        case .small:
            return .custom("SFProText-Semibold", fixedSize: 16)
        case .medium:
            return .custom("SFProText-Semibold", fixedSize: 16)
        case .large:
            return .custom("SFProDisplay-Semibold", fixedSize: 20)
        }
    }
    
    private var iconButtonSize: CGSize {
        switch contentSize {
        case .small:
            return .init(width: 32, height: 32)
        case .medium:
            return .init(width: 44, height: 44)
        case .large:
            return .init(width: 56, height: 56)
        }
    }

    private var verticalPadding: CGFloat {
        if isHugIconButton {
            return 0
        }
        switch contentSize {
        case .small:
            return 6
        case .medium:
            return 12
        case .large:
            return 15
        }
    }
    
    private var horizontalPadding: CGFloat {
        if isHugIconButton {
            return 0
        }
        switch contentSize {
        case .small:
            return 8
        case .medium:
            return 16
        case .large:
            return 16
        }
    }

    init(
        _ parameters: MultiStateButtonParameters,
        _ contentSize: ButtonContentSize,
        _ contentMode: ButtonContentMode,
        _ iconPosition: ButtonLabelIconPosition
    ) {
        self.parameters = parameters
        self.contentSize = contentSize
        self.contentMode = contentMode
        self.iconPosition = iconPosition
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
            .iconButtonSize(iconButtonSize, contentMode: contentMode, iconPosition: iconPosition)
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
        case .fixed(width: let width):
            self.frame(width: width)
        case .fill:
            self.frame(maxWidth: .infinity)
        }
    }
}

extension View {
    @ViewBuilder func iconButtonSize(_ size: CGSize, contentMode: ButtonContentMode, iconPosition: ButtonLabelIconPosition) -> some View {
        switch (iconPosition, contentMode) {
        case (.onlyIcon, .hug):
            self.frame(width: size.width, height: size.height)
        default:
            self
        }
    }
}

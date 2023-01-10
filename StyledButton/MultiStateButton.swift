import SwiftUI

enum ButtonContentSize: CaseIterable {
    case small
    case medium
    case large
}

enum ButtonContentMode: Equatable {
    case hug
    case fixed(width: CGFloat)
    case fill
}

struct MultiStateButton: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    @State private var isHovering = false
    private var colorStyle: ButtonColorStyle
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

    private var padding: CGFloat {
        switch contentSize {
        case .small:
            return 4
        case .medium:
            return 10
        case .large:
            return 14
        }
    }

    init(
        _ colorStyle: ButtonColorStyle,
        _ contentSize: ButtonContentSize,
        _ contentMode: ButtonContentMode,
        _ iconPosition: ButtonLabelIconPosition
    ) {
        self.colorStyle = colorStyle
        self.contentSize = contentSize
        self.contentMode = contentMode
        self.iconPosition = iconPosition
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .padding(padding)
            .contentMode(contentMode)
            .contentShape(Rectangle())
            .onHover(perform: updateHovering(onHover:))
            .foregroundColor(isEnabled ? colorStyle.foregroundDefaultColor : colorStyle.foregroundDisabledColor)
            .background(backgroundColor(isPressed: configuration.isPressed))
            .cornerRadius(8)
    }

    private func backgroundColor(isPressed: Bool) -> Color {
        if !isEnabled {
            return colorStyle.backgroundDefaultColor.opacity(0.3)
        }
        if isPressed {
            return colorStyle.backgroundActiveColor
        }
        return isHovering ? colorStyle.backgroundHoverColor : colorStyle.backgroundDefaultColor
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

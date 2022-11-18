import SwiftUI

struct MultiStateButton: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    @State private var isHovering = false
    private var parameters: MultiStateButtonParameters

    init(_ parameters: MultiStateButtonParameters) {
        self.parameters = parameters
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
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

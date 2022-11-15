import SwiftUI

struct ButtonCustomStyle: ViewModifier {
    var foregroundColor: Color
    var defaultColor: Color
    var hoverColor: Color
    var activeColor: Color

    @State private var isHovering = false
    @GestureState private var isActive = false

    private var activeStateUpdater: GestureStateGesture<DragGesture, Bool> {
        DragGesture(minimumDistance: 0.0)
            .updating($isActive, body: { _, active, _ in
                active = true
            })
    }

    private var backgroundColor: Color {
        if isActive {
            return activeColor
        }
        return isHovering ? hoverColor : defaultColor
    }

    func body(content: Content) -> some View {
        content
            .buttonStyle(PlainButtonStyle())
            .onHover(perform: updateHovering(onHover:))
            .simultaneousGesture(activeStateUpdater)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(8)
    }

    private func updateHovering(onHover: Bool) {
        withAnimation(.easeOut(duration: 0.05)) {
            isHovering = onHover
        }
    }
}

extension View {
    func buttonCustomStyle(
        foregroundColor: Color = .clear,
        defaultColor: Color = .clear,
        hoverColor: Color = .clear,
        activeColor: Color = .clear
    ) -> some View {
        modifier(
            ButtonCustomStyle(
                foregroundColor: foregroundColor,
                defaultColor: defaultColor,
                hoverColor: hoverColor,
                activeColor: activeColor
            )
        )
    }
}

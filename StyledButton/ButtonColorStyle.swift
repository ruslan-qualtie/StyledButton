import SwiftUI

protocol ButtonColorStyle {
    var loadingIndicatorColor: Color { get }
    var foregroundDefaultColor: Color { get }
    var foregroundDisabledColor: Color { get }
    var backgroundDefaultColor: Color { get }
    var backgroundHoverColor: Color { get }
    var backgroundActiveColor: Color { get }
}

extension ButtonColorStyle {
    var loadingIndicatorColor: Color { .clear }
    var foregroundDefaultColor: Color { .clear }
    var foregroundDisabledColor: Color { .clear }
    var backgroundDefaultColor: Color { .clear }
    var backgroundHoverColor: Color { .clear }
    var backgroundActiveColor: Color { .clear }
}

struct SolidBlueColorStyle: ButtonColorStyle {
    var loadingIndicatorColor: Color = .white
    var foregroundDefaultColor: Color = .white
    var foregroundDisabledColor: Color = .white.opacity(0.3)
    var backgroundDefaultColor: Color = .init("geekblue-6").opacity(0.8)
    var backgroundHoverColor: Color = .init("geekblue-6").opacity(0.9)
    var backgroundActiveColor: Color = .init("geekblue-6")
}

struct SolidGreenColorStyle: ButtonColorStyle {
    var loadingIndicatorColor: Color = .white
    var foregroundDefaultColor: Color = .white
    var foregroundDisabledColor: Color = .white.opacity(0.3)
    var backgroundDefaultColor: Color = .init("cyan-6").opacity(0.8)
    var backgroundHoverColor: Color = .init("cyan-6").opacity(0.9)
    var backgroundActiveColor: Color = .init("cyan-6")
}

struct SolidWhiteColorStyle: ButtonColorStyle {
    var loadingIndicatorColor: Color = .black
    var foregroundDefaultColor: Color = .init("dark-indigo")
    var foregroundDisabledColor: Color = .init("dark-indigo").opacity(0.7)
    var backgroundDefaultColor: Color = .white.opacity(0.8)
    var backgroundHoverColor: Color = .white.opacity(0.9)
    var backgroundActiveColor: Color = .white
}

struct PlainColorStyle: ButtonColorStyle {
    var loadingIndicatorColor: Color = .init("geekblue-3")
    var foregroundDefaultColor: Color = .init("geekblue-3")
    var foregroundDisabledColor: Color = .init("geekblue-3").opacity(0.3)
    var backgroundHoverColor: Color = .init("geekblue-4").opacity(0.15)
    var backgroundActiveColor: Color =  .init("geekblue-4").opacity(0.2)
}

struct TinteColorStyle: ButtonColorStyle {
    var loadingIndicatorColor: Color = .init("geekblue-3")
    var foregroundDefaultColor: Color = .init("geekblue-3")
    var foregroundDisabledColor: Color = .init("geekblue-3").opacity(0.3)
    var backgroundDefaultColor: Color = .init("geekblue-4").opacity(0.1)
    var backgroundHoverColor: Color = .init("geekblue-4").opacity(0.15)
    var backgroundActiveColor: Color = .init("geekblue-4").opacity(0.20)
}

struct TintedDestructiveColorStyle: ButtonColorStyle {
    var loadingIndicatorColor: Color = .init("red-4")
    var foregroundDefaultColor: Color = .init("red-4")
    var foregroundDisabledColor: Color = .init("red-4").opacity(0.3)
    var backgroundDefaultColor: Color = .init("red-4").opacity(0.1)
    var backgroundHoverColor: Color = .init("red-4").opacity(0.15)
    var backgroundActiveColor: Color = .init("red-4").opacity(0.20)
}

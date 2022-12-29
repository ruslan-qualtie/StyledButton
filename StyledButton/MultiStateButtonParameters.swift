import SwiftUI

struct MultiStateButtonParameters {
    var loadingIndicatorColor: NSColor = .clear
    var foregroundDefaultColor: Color = .clear
    var foregroundDisabledColor: Color = .clear
    var backgroundDefaultColor: Color = .clear
    var backgroundHoverColor: Color = .clear
    var backgroundActiveColor: Color = .clear
}

extension MultiStateButtonParameters {
    static var solidBlue: MultiStateButtonParameters {
        .init(
            loadingIndicatorColor: .white,
            foregroundDefaultColor: .white,
            foregroundDisabledColor: .white.opacity(0.3),
            backgroundDefaultColor: Color("geekblue-6").opacity(0.8),
            backgroundHoverColor: Color("geekblue-6").opacity(0.9),
            backgroundActiveColor: Color("geekblue-6")
        )
    }

    static var solidGreen: MultiStateButtonParameters {
        .init(
            loadingIndicatorColor: .white,
            foregroundDefaultColor: .white,
            foregroundDisabledColor: .white.opacity(0.3),
            backgroundDefaultColor: Color("cyan-6").opacity(0.8),
            backgroundHoverColor: Color("cyan-6").opacity(0.9),
            backgroundActiveColor: Color("cyan-6")
        )
    }

    static var solidWhite: MultiStateButtonParameters {
        .init(
            loadingIndicatorColor: .black,
            foregroundDefaultColor: Color("dark-indigo"),
            foregroundDisabledColor: Color("dark-indigo").opacity(0.7),
            backgroundDefaultColor: .white.opacity(0.8),
            backgroundHoverColor: .white.opacity(0.9),
            backgroundActiveColor: .white
        )
    }

    static var plain: MultiStateButtonParameters {
        .init(
            loadingIndicatorColor: .init(named: "geekblue-3")!,
            foregroundDefaultColor: Color("geekblue-3"),
            foregroundDisabledColor: Color("geekblue-3").opacity(0.3),
            backgroundHoverColor: Color("geekblue-4").opacity(0.15),
            backgroundActiveColor: Color("geekblue-4").opacity(0.2)
        )
    }

    static var tinted: MultiStateButtonParameters {
        .init(
            loadingIndicatorColor: .init(named: "geekblue-3")!,
            foregroundDefaultColor: Color("geekblue-3"),
            foregroundDisabledColor: Color("geekblue-3").opacity(0.3),
            backgroundDefaultColor: Color("geekblue-4").opacity(0.1),
            backgroundHoverColor: Color("geekblue-4").opacity(0.15),
            backgroundActiveColor: Color("geekblue-4").opacity(0.20)
        )
    }

    static var tintedDestructive: MultiStateButtonParameters {
        .init(
            loadingIndicatorColor: .init(named: "red-4")!,
            foregroundDefaultColor: Color("red-4"),
            foregroundDisabledColor: Color("red-4").opacity(0.3),
            backgroundDefaultColor: Color("red-4").opacity(0.1),
            backgroundHoverColor: Color("red-4").opacity(0.15),
            backgroundActiveColor: Color("red-4").opacity(0.20)
        )
    }
}

import SwiftUI

struct MultiStateButtonParameters {
    var foregroundDefaultColor: Color = .clear
    var foregroundDisabledColor: Color = .clear
    var backgroundDefaultColor: Color = .clear
    var backgroundHoverColor: Color = .clear
    var backgroundActiveColor: Color = .clear
}

extension MultiStateButtonParameters {
    static var blue: MultiStateButtonParameters {
        .init(
            foregroundDefaultColor: .white,
            foregroundDisabledColor: .white.opacity(0.3),
            backgroundDefaultColor: Color("geekblue-6").opacity(0.8),
            backgroundHoverColor: Color("geekblue-6").opacity(0.9),
            backgroundActiveColor: Color("geekblue-6")
        )
    }
    
    static var transparentOne: MultiStateButtonParameters {
        .init(
            foregroundDefaultColor: Color("geekblue-3"),
            foregroundDisabledColor: Color("geekblue-3").opacity(0.3),
            backgroundHoverColor: Color("geekblue-6").opacity(0.1),
            backgroundActiveColor: Color("geekblue-6").opacity(0.2)
        )
    }
    
    static var cyan: MultiStateButtonParameters {
        .init(
            foregroundDefaultColor: .black,
            foregroundDisabledColor: .black,
            backgroundDefaultColor: Color("cyan-5").opacity(0.8),
            backgroundHoverColor: Color("cyan-5").opacity(0.9),
            backgroundActiveColor: Color("cyan-5")
        )
    }
    
    static var white: MultiStateButtonParameters {
        .init(
            foregroundDefaultColor: Color("dark-indigo"),
            foregroundDisabledColor: Color("dark-indigo"),
            backgroundDefaultColor: .white.opacity(0.8),
            backgroundHoverColor: .white.opacity(0.9),
            backgroundActiveColor: .white
        )
    }
    
    static var transparentTwo: MultiStateButtonParameters {
        .init(
            foregroundDefaultColor: Color("geekblue-3"),
            foregroundDisabledColor: Color("geekblue-3").opacity(0.3),
            backgroundHoverColor: Color("geekblue-4").opacity(0.15),
            backgroundActiveColor: Color("geekblue-4").opacity(0.20)
        )
    }
    
    static var transparentThree: MultiStateButtonParameters {
        .init(
            foregroundDefaultColor: Color("geekblue-3"),
            foregroundDisabledColor: Color("geekblue-3").opacity(0.3),
            backgroundDefaultColor: Color("geekblue-4").opacity(0.1),
            backgroundHoverColor: Color("geekblue-4").opacity(0.15),
            backgroundActiveColor: Color("geekblue-4").opacity(0.20)
        )
    }
}

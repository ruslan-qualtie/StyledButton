import SwiftUI

enum ButtonLabelIconPosition {
    case iconLeft
    case iconRight
    case noIcon
    case onlyIcon
}

enum ButtonLabelPacking {
    case centerAligned
    case leftAligned
    case spaceBetween
}

struct ButtonLabel<Title: View, Icon: View>: View {
    private let titleContent: () -> Title?
    private let iconContent: () -> Icon?
    private let iconPosition: ButtonLabelIconPosition
    private let packing: ButtonLabelPacking

    init(
        @ViewBuilder title: @escaping () -> Title? = { nil },
        @ViewBuilder icon: @escaping () -> Icon? = { nil },
        iconPosition: ButtonLabelIconPosition,
        packing: ButtonLabelPacking
    ) {
        self.titleContent = title
        self.iconContent = icon
        self.iconPosition = iconPosition
        self.packing = packing
    }

    init(
        text: String,
        systemImage: String,
        iconPosition: ButtonLabelIconPosition = .iconLeft,
        packing: ButtonLabelPacking = .centerAligned
    ) where Title == Text, Icon == Image {
        self.init(
            title: { Text(text) },
            icon: { Image(systemName: systemImage) },
            iconPosition: iconPosition,
            packing: packing
        )
    }

    init(
        systemImage: String,
        packing: ButtonLabelPacking = .centerAligned
    ) where Title == Text, Icon == Image {
        self.init(
            icon: { Image(systemName: systemImage) },
            iconPosition: .onlyIcon,
            packing: packing
        )
    }

    init(
        text: String,
        packing: ButtonLabelPacking = .centerAligned
    ) where Title == Text, Icon == Image {
        self.init(
            title: { Text(text) },
            iconPosition: .noIcon,
            packing: packing
        )
    }

    var body: some View {
        switch iconPosition {
        case .iconLeft:
            HStack {
                iconContent()
                if case .spaceBetween = packing {
                    Spacer()
                }
                titleContent()?.fixedSize()
                if case .leftAligned = packing {
                    Spacer()
                }
            }
        case .iconRight:
            HStack {
                titleContent()?.fixedSize()
                if case .spaceBetween = packing {
                    Spacer()
                }
                iconContent()
                if case .leftAligned = packing {
                    Spacer()
                }
            }
        case .noIcon:
            if case .leftAligned = packing {
                HStack {
                    titleContent()?.fixedSize()
                    Spacer(minLength: 0)
                }
            } else {
                titleContent()?.fixedSize()
            }
        case .onlyIcon:
            if case .leftAligned = packing {
                HStack {
                    iconContent()
                    Spacer(minLength: 0)
                }
            } else {
                iconContent()
            }
        }
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
        ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg", iconPosition: .iconRight)
        ButtonLabel(text: "Done")
        ButtonLabel(systemImage: "info.circle")
    }
}

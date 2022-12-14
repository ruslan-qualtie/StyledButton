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
    private var colorStyle: ButtonColorStyle
    private var contentSize: ButtonContentSize
    private let iconPosition: ButtonLabelIconPosition
    private let packing: ButtonLabelPacking
    private var isLoading: Bool

    init(
        @ViewBuilder title: @escaping () -> Title? = { nil },
        @ViewBuilder icon: @escaping () -> Icon? = { nil },
        colorStyle: ButtonColorStyle,
        contentSize: ButtonContentSize,
        iconPosition: ButtonLabelIconPosition,
        packing: ButtonLabelPacking,
        isLoading: Bool
    ) {
        self.titleContent = title
        self.iconContent = icon
        self.colorStyle = colorStyle
        self.contentSize = contentSize
        self.iconPosition = iconPosition
        self.packing = packing
        self.isLoading = isLoading
    }

    init(
        text: String,
        systemImage: String,
        colorStyle: ButtonColorStyle = SolidBlueColorStyle(),
        contentSize: ButtonContentSize = .medium,
        iconPosition: ButtonLabelIconPosition = .iconLeft,
        packing: ButtonLabelPacking = .centerAligned,
        isLoading: Bool = false
    ) where Title == Text, Icon == Image {
        self.init(
            title: { Text(text) },
            icon: { Image(systemName: systemImage) },
            colorStyle: colorStyle,
            contentSize: contentSize,
            iconPosition: iconPosition,
            packing: packing,
            isLoading: isLoading
        )
    }

    init(
        systemImage: String,
        colorStyle: ButtonColorStyle = SolidBlueColorStyle(),
        contentSize: ButtonContentSize = .medium,
        packing: ButtonLabelPacking = .centerAligned,
        isLoading: Bool = false
    ) where Title == Text, Icon == Image {
        self.init(
            icon: { Image(systemName: systemImage) },
            colorStyle: colorStyle,
            contentSize: contentSize,
            iconPosition: .onlyIcon,
            packing: packing,
            isLoading: isLoading
        )
    }

    init(
        text: String,
        colorStyle: ButtonColorStyle = SolidBlueColorStyle(),
        contentSize: ButtonContentSize = .medium,
        packing: ButtonLabelPacking = .centerAligned,
        isLoading: Bool = false
    ) where Title == Text, Icon == Image {
        self.init(
            title: { Text(text) },
            colorStyle: colorStyle,
            contentSize: contentSize,
            iconPosition: .noIcon,
            packing: packing,
            isLoading: isLoading
        )
    }

    private var iconSize: CGSize {
        switch contentSize {
        case .small, .medium:
            return .init(width: 24, height: 24)
        case .large:
            return .init(width: 28, height: 28)
        }
    }

    private var labelContentSpacing: CGFloat {
        switch contentSize {
        case .small:
            return 3
        case .medium, .large:
            return 5
        }
    }

    private var labelTitlePadding: CGFloat {
        switch contentSize {
        case .small:
            return 3
        case .medium:
            return 5
        case .large:
            return 1
        }
    }

    private var labelIconPadding: CGFloat {
        switch contentSize {
        case .small:
            return 1
        case .medium:
            return 2
        case .large:
            return 0
        }
    }

    private var titleVerticalpadding: CGFloat {
        switch contentSize {
        case .small:
            return 4
        case .medium:
            return 10
        case .large:
            return 14
        }
    }

    private var progressViewScale: CGFloat {
        switch contentSize {
        case .small, .medium:
            return 0.5
        case .large:
            return 0.7
        }
    }

    private var icon: some View {
        Group {
            if isLoading {
                ProgressIndicator(color: colorStyle.loadingIndicatorColor)
                    .scaleEffect(progressViewScale, anchor: .center)
            } else {
                iconContent()
            }
        }
        .frame(width: iconSize.width, height: iconSize.height)
    }

    private var title: some View {
        titleContent()?
            .fixedSize()
            .frame(height: iconSize.height)
    }

    var body: some View {
        Group {
            switch iconPosition {
            case .iconLeft:
                IconLeftLabel(
                    title: title,
                    icon: icon,
                    packing: packing,
                    labelContentSpacing: labelContentSpacing,
                    labelTitlePadding: labelTitlePadding,
                    labelIconPadding: labelIconPadding
                )
            case .iconRight:
                IconRightLabel(
                    title: title,
                    icon: icon,
                    packing: packing,
                    labelContentSpacing: labelContentSpacing,
                    labelTitlePadding: labelTitlePadding,
                    labelIconPadding: labelIconPadding
                )
            case .noIcon:
                NoIconLabel(
                    title: title,
                    packing: packing,
                    labelTitlePadding: labelTitlePadding
                )
            case .onlyIcon:
                IconLabel(icon: icon)
            }
        }
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(
            text: "Done",
            systemImage: "doc.text.below.ecg"
        )
        ButtonLabel(
            text: "Done",
            systemImage: "doc.text.below.ecg", iconPosition: .iconRight
        )
        ButtonLabel(
            text: "Done"
        )
        ButtonLabel(
            systemImage: "info.circle"
        )
    }
}

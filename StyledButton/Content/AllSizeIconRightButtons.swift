import SwiftUI

struct AllSizeIconRightButtons: View {
    let title: String
    let icon: String
    let colorStyle: ButtonColorStyle
    let contentMode: ButtonContentMode
    let packing: ButtonLabelPacking
    let action: () -> Void

    var buttons: some View {
        HStack(alignment: .top) {
            Spacer()
            ForEach(ButtonContentSize.allCases, id: \.self) { size in
                Button(action: action) {
                    ButtonLabel(
                        text: title,
                        systemImage: icon,
                        colorStyle: colorStyle,
                        contentSize: size,
                        iconPosition: .iconRight,
                        packing: packing
                    )
                }
                .buttonStyle(
                    MultiStateButton(colorStyle, size, contentMode, .iconRight)
                )
                Spacer()
            }
        }
    }

    var loadingButtons: some View {
        HStack(alignment: .top) {
            Spacer()
            ForEach(ButtonContentSize.allCases, id: \.self) { size in
                Button(action: action) {
                    ButtonLabel(
                        text: title,
                        systemImage: icon,
                        colorStyle: colorStyle,
                        contentSize: size,
                        iconPosition: .iconRight,
                        packing: packing,
                        isLoading: true
                    )
                }
                .buttonStyle(
                    MultiStateButton(colorStyle, size, contentMode, .iconRight)
                )
                Spacer()
            }
        }
    }

    var body: some View {
        VStack {
            buttons
            loadingButtons.disabled(true)
            buttons.disabled(true)
        }
    }
}

struct AllSizeIconRightButtons_Previews: PreviewProvider {
    static var previews: some View {
        AllSizeIconRightButtons(
            title: "Done",
            icon: "checkmark",
            colorStyle: SolidBlueColorStyle(),
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

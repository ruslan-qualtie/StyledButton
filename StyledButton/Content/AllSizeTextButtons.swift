import SwiftUI

struct AllSizeTextButtons: View {
    let title: String
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
                        colorStyle: colorStyle,
                        contentSize: size,
                        packing: packing
                    )
                }
                .buttonStyle(MultiStateButton(colorStyle, size, contentMode, .noIcon))
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
                        colorStyle: colorStyle,
                        contentSize: size,
                        packing: packing,
                        isLoading: true
                    )
                }
                .buttonStyle(MultiStateButton(colorStyle, size, contentMode, .noIcon))
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

struct AllSizeTextButtons_Previews: PreviewProvider {
    static var previews: some View {
        AllSizeTextButtons(
            title: "Done",
            colorStyle: SolidBlueColorStyle(),
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

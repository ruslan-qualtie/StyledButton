import SwiftUI

struct AllSizeIconButtons: View {
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
                        systemImage: icon,
                        colorStyle: colorStyle,
                        contentSize: size,
                        packing: packing
                    )
                }
                .buttonStyle(MultiStateButton(colorStyle: colorStyle, contentSize: size, contentMode: contentMode, iconPosition: .onlyIcon))
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
                        systemImage: icon,
                        colorStyle: colorStyle,
                        contentSize: size,
                        packing: packing,
                        isLoading: true
                    )
                }
                .buttonStyle(MultiStateButton(colorStyle: colorStyle, contentSize: size, contentMode: contentMode, iconPosition: .onlyIcon))
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

struct AllSizeIconButtons_Previews: PreviewProvider {
    static var previews: some View {
        AllSizeIconButtons(
            icon: "flag",
            colorStyle: SolidBlueColorStyle(),
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

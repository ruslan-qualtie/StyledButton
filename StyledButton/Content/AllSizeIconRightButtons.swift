import SwiftUI

struct AllSizeIconRightButtons: View {
    let title: String
    let icon: String
    let parameters: MultiStateButtonParameters
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
                        parameters: parameters,
                        contentSize: size,
                        iconPosition: .iconRight,
                        packing: packing
                    )
                }
                .buttonStyle(
                    MultiStateButton(parameters, size, contentMode, .iconRight)
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
                        parameters: parameters,
                        contentSize: size,
                        iconPosition: .iconRight,
                        packing: packing,
                        isLoading: true
                    )
                }
                .buttonStyle(
                    MultiStateButton(parameters, size, contentMode, .iconRight)
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
            parameters: .solidBlue,
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

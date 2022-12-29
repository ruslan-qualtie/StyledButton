import SwiftUI

struct AllSizeIconLeftButtons: View {
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
                        packing: packing
                    )
                }
                .buttonStyle(MultiStateButton(parameters, size, contentMode, .iconLeft))
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
                        packing: packing,
                        isLoading: true
                    )
                }
                .buttonStyle(MultiStateButton(parameters, size, contentMode, .iconLeft))
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

struct AllSizeIconLeftButtons_Previews: PreviewProvider {
    static var previews: some View {
        AllSizeIconLeftButtons(
            title: "Done",
            icon: "doc.text.below.ecg",
            parameters: .solidBlue,
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

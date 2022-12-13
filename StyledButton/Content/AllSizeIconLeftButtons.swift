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
                        packing: packing
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

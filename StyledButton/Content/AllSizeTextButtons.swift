import SwiftUI

struct AllSizeTextButtons: View {
    let title: String
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
                        packing: packing
                    )
                }
                .buttonStyle(MultiStateButton(parameters, size, contentMode, .noIcon))
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

struct AllSizeTextButtons_Previews: PreviewProvider {
    static var previews: some View {
        AllSizeTextButtons(
            title: "Done",
            parameters: .solidBlue,
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

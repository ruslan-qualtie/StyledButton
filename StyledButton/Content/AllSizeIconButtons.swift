import SwiftUI

struct AllSizeIconButtons: View {
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
                        systemImage: icon,
                        packing: packing
                    )
                }
                .buttonStyle(MultiStateButton(parameters, size, contentMode, .onlyIcon))
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

struct AllSizeIconButtons_Previews: PreviewProvider {
    static var previews: some View {
        AllSizeIconButtons(
            icon: "flag",
            parameters: .solidBlue,
            contentMode: .hug,
            packing: .centerAligned,
            action: {}
        )
    }
}

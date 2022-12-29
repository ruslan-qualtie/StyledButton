import SwiftUI

struct ButtonsContentModesView: View {
    var body: some View {
        VStack {
            AllSizeIconLeftButtons(
                title: "Done",
                icon: "doc.text.below.ecg",
                parameters: .solidBlue,
                contentMode: .hug,
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconRightButtons(
                title: "Done",
                icon: "checkmark",
                parameters: .solidBlue,
                contentMode: .fixed(width: 150),
                packing: .centerAligned,
                action: {}
            )
            AllSizeTextButtons(
                title: "Done",
                parameters: .solidBlue,
                contentMode: .fill,
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconButtons(
                icon: "flag",
                parameters: .solidBlue,
                contentMode: .hug,
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconButtons(
                icon: "flag",
                parameters: .solidBlue,
                contentMode: .fixed(width: 150),
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconButtons(
                icon: "flag",
                parameters: .solidBlue,
                contentMode: .fill,
                packing: .centerAligned,
                action: {}
            )
            Spacer()
        }
    }
}

struct ButtonsContentModesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsContentModesView()
    }
}

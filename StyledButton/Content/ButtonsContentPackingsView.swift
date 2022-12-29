import SwiftUI

struct ButtonsContentPackingsView: View {
    var body: some View {
        VStack {
            AllSizeIconLeftButtons(
                title: "Done",
                icon: "doc.text.below.ecg",
                parameters: .solidBlue,
                contentMode: .fill,
                packing: .leftAligned,
                action: {}
            )
            AllSizeIconRightButtons(
                title: "Done",
                icon: "checkmark",
                parameters: .solidBlue,
                contentMode: .fill,
                packing: .spaceBetween,
                action: {}
            )
            AllSizeTextButtons(
                title: "Done",
                parameters: .solidBlue,
                contentMode: .fill,
                packing: .leftAligned,
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

struct ButtonsContentPackingsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsContentPackingsView()
    }
}

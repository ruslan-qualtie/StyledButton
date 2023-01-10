import SwiftUI

struct ButtonsContentPackingsView: View {
    var body: some View {
        VStack {
            AllSizeIconLeftButtons(
                title: "Done",
                icon: "doc.text.below.ecg",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .fill,
                packing: .leftAligned,
                action: {}
            )
            AllSizeIconRightButtons(
                title: "Done",
                icon: "checkmark",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .fill,
                packing: .spaceBetween,
                action: {}
            )
            AllSizeTextButtons(
                title: "Done",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .fill,
                packing: .leftAligned,
                action: {}
            )
            AllSizeIconButtons(
                icon: "flag",
                colorStyle: SolidBlueColorStyle(),
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

import SwiftUI

struct ButtonsContentModesView: View {
    var body: some View {
        VStack {
            AllSizeIconLeftButtons(
                title: "Done",
                icon: "doc.text.below.ecg",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .hug,
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconRightButtons(
                title: "Done",
                icon: "checkmark",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .fixed(width: 150),
                packing: .centerAligned,
                action: {}
            )
            AllSizeTextButtons(
                title: "Done",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .fill,
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconButtons(
                icon: "flag",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .hug,
                packing: .centerAligned,
                action: {}
            )
            AllSizeIconButtons(
                icon: "flag",
                colorStyle: SolidBlueColorStyle(),
                contentMode: .fixed(width: 150),
                packing: .centerAligned,
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

struct ButtonsContentModesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsContentModesView()
    }
}

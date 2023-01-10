import SwiftUI

struct AllButtonSizesView: View {
    var body: some View {
        VStack {
            HStack {
                AllSizeIconLeftButtons(
                    title: "Done",
                    icon: "doc.text.below.ecg",
                    colorStyle: SolidBlueColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "Done",
                    icon: "checkmark",
                    colorStyle: SolidBlueColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "Done",
                    colorStyle: SolidBlueColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    colorStyle: SolidBlueColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "Done",
                    icon: "doc.text.below.ecg",
                    colorStyle: SolidGreenColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "Done",
                    icon: "checkmark",
                    colorStyle: SolidGreenColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "Done",
                    colorStyle: SolidGreenColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    colorStyle: SolidGreenColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "Done",
                    icon: "doc.text.below.ecg",
                    colorStyle: SolidWhiteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "Done",
                    icon: "checkmark",
                    colorStyle: SolidWhiteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "Done",
                    colorStyle: SolidWhiteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    colorStyle: SolidWhiteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "View Report",
                    icon: "doc.text.below.ecg",
                    colorStyle: PlainColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "View Report",
                    icon: "checkmark",
                    colorStyle: PlainColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "View Report",
                    colorStyle: PlainColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    colorStyle: PlainColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "View Report",
                    icon: "doc.text.below.ecg",
                    colorStyle: TinteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "View Report",
                    icon: "checkmark",
                    colorStyle: TinteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "View Report",
                    colorStyle: TinteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    colorStyle: TinteColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "View Report",
                    icon: "doc.text.below.ecg",
                    colorStyle: TintedDestructiveColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "View Report",
                    icon: "checkmark",
                    colorStyle: TintedDestructiveColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "View Report",
                    colorStyle: TintedDestructiveColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    colorStyle: TintedDestructiveColorStyle(),
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct AllButtonSizesView_Previews: PreviewProvider {
    static var previews: some View {
        AllButtonSizesView()
            .frame(width: 2000)
    }
}

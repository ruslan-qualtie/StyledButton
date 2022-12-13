import SwiftUI

struct AllButtonSizesView: View {
    var body: some View {
        VStack {
            HStack {
                AllSizeIconLeftButtons(
                    title: "Done",
                    icon: "doc.text.below.ecg",
                    parameters: .solidBlue,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "Done",
                    icon: "checkmark",
                    parameters: .solidBlue,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "Done",
                    parameters: .solidBlue,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    parameters: .solidBlue,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "Done",
                    icon: "doc.text.below.ecg",
                    parameters: .solidGreen,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "Done",
                    icon: "checkmark",
                    parameters: .solidGreen,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "Done",
                    parameters: .solidGreen,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    parameters: .solidGreen,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "Done",
                    icon: "doc.text.below.ecg",
                    parameters: .solidWhite,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "Done",
                    icon: "checkmark",
                    parameters: .solidWhite,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "Done",
                    parameters: .solidWhite,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    parameters: .solidWhite,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "View Report",
                    icon: "doc.text.below.ecg",
                    parameters: .plain,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "View Report",
                    icon: "checkmark",
                    parameters: .plain,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "View Report",
                    parameters: .plain,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    parameters: .plain,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "View Report",
                    icon: "doc.text.below.ecg",
                    parameters: .tinted,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "View Report",
                    icon: "checkmark",
                    parameters: .tinted,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "View Report",
                    parameters: .tinted,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    parameters: .tinted,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
            }
            HStack {
                AllSizeIconLeftButtons(
                    title: "View Report",
                    icon: "doc.text.below.ecg",
                    parameters: .tintedDestructive,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconRightButtons(
                    title: "View Report",
                    icon: "checkmark",
                    parameters: .tintedDestructive,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeTextButtons(
                    title: "View Report",
                    parameters: .tintedDestructive,
                    contentMode: .hug,
                    packing: .centerAligned,
                    action: action
                )
                AllSizeIconButtons(
                    icon: "flag",
                    parameters: .tintedDestructive,
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

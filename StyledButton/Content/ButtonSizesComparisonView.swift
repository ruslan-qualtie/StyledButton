import SwiftUI

struct ButtonSizesComparisonView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Image("iconleft")
                    .frame(width: 580, height: 71)
                HStack(alignment: .top) {
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "doc.text.below.ecg",
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            contentMode: .hug,
                            iconPosition: .iconLeft
                        )
                    )
                    .offset(x: 16)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "doc.text.below.ecg",
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            contentMode: .hug,
                            iconPosition: .iconLeft
                        )
                    )
                    .offset(x: 140)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "doc.text.below.ecg",
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            contentMode: .hug,
                            iconPosition: .iconLeft
                        )
                    )
                    .offset(x: 266)
                }
                .offset(x: 0, y: 6.5)
            }
            ZStack(alignment: .topLeading) {
                Image("iconright")
                    .frame(width: 580, height: 71)
                HStack(alignment: .top) {
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "checkmark",
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            iconPosition: .iconRight,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            contentMode: .hug,
                            iconPosition: .iconRight
                        )
                    )
                    .offset(x: 13.5)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "checkmark",
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            iconPosition: .iconRight,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            contentMode: .hug,
                            iconPosition: .iconRight
                        )
                    )
                    .offset(x: 136.5)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "checkmark",
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            iconPosition: .iconRight,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            contentMode: .hug,
                            iconPosition: .iconRight
                        )
                    )
                    .offset(x: 264)
                }
                .offset(x: 0, y: 7.5)
            }
            ZStack(alignment: .topLeading) {
                Image("noicon")
                    .frame(width: 580, height: 71)
                HStack(alignment: .top) {
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            contentMode: .hug,
                            iconPosition: .noIcon
                        )
                    )
                    .offset(x: 25)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            contentMode: .hug,
                            iconPosition: .noIcon
                        )
                    )
                    .offset(x: 173)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            contentMode: .hug,
                            iconPosition: .noIcon
                        )
                    )
                    .offset(x: 327)
                }
                .offset(x: 0, y: 8.5)
            }
            ZStack(alignment: .topLeading) {
                Image("icononly")
                    .frame(width: 580, height: 71)
                HStack(alignment: .top) {
                    Button(action: {}) {
                        ButtonLabel(
                            systemImage: "flag",
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .small,
                            contentMode: .hug,
                            iconPosition: .onlyIcon
                        )
                    )
                    .offset(x: 41)
                    Button(action: {}) {
                        ButtonLabel(
                            systemImage: "flag",
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .medium,
                            contentMode: .hug,
                            iconPosition: .onlyIcon
                        )
                    )
                    .offset(x: 212)
                    Button(action: {}) {
                        ButtonLabel(
                            systemImage: "flag",
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            colorStyle: TinteColorStyle(),
                            contentSize: .large,
                            contentMode: .hug,
                            iconPosition: .onlyIcon
                        )
                    )
                    .offset(x: 393)
                }
                .offset(x: 0, y: 9)
            }
            Spacer()
        }
    }
}

struct ButtonSizesComparisonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSizesComparisonView()
    }
}

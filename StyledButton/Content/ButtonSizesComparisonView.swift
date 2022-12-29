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
                            parameters: .tinted,
                            contentSize: .small,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .small,
                            .hug,
                            .iconLeft
                        )
                    )
                    .offset(x: 16)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "doc.text.below.ecg",
                            parameters: .tinted,
                            contentSize: .medium,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .medium,
                            .hug,
                            .iconLeft
                        )
                    )
                    .offset(x: 140)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "doc.text.below.ecg",
                            parameters: .tinted,
                            contentSize: .large,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .large,
                            .hug,
                            .iconLeft
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
                            parameters: .tinted,
                            contentSize: .small,
                            iconPosition: .iconRight,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .small,
                            .hug,
                            .iconRight
                        )
                    )
                    .offset(x: 13.5)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "checkmark",
                            parameters: .tinted,
                            contentSize: .medium,
                            iconPosition: .iconRight,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .medium,
                            .hug,
                            .iconRight
                        )
                    )
                    .offset(x: 136.5)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            systemImage: "checkmark",
                            parameters: .tinted,
                            contentSize: .large,
                            iconPosition: .iconRight,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .large,
                            .hug,
                            .iconRight
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
                            parameters: .tinted,
                            contentSize: .small,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .small,
                            .hug,
                            .noIcon
                        )
                    )
                    .offset(x: 25)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            parameters: .tinted,
                            contentSize: .medium,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .medium,
                            .hug,
                            .noIcon
                        )
                    )
                    .offset(x: 173)
                    Button(action: {}) {
                        ButtonLabel(
                            text: "Done",
                            parameters: .tinted,
                            contentSize: .large,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .large,
                            .hug,
                            .noIcon
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
                            parameters: .tinted,
                            contentSize: .small,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .small,
                            .hug,
                            .onlyIcon
                        )
                    )
                    .offset(x: 41)
                    Button(action: {}) {
                        ButtonLabel(
                            systemImage: "flag",
                            parameters: .tinted,
                            contentSize: .medium,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .medium,
                            .hug,
                            .onlyIcon
                        )
                    )
                    .offset(x: 212)
                    Button(action: {}) {
                        ButtonLabel(
                            systemImage: "flag",
                            parameters: .tinted,
                            contentSize: .large,
                            packing: .centerAligned
                        )
                    }
                    .buttonStyle(
                        MultiStateButton(
                            .tinted,
                            .large,
                            .hug,
                            .onlyIcon
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

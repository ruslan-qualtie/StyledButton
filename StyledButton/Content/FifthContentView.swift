import SwiftUI

struct FifthContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg"
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentTwo))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentTwo))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentTwo))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg"
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentTwo))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentTwo))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentTwo))
                .disabled(true)
                Spacer()
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct FifthContentView_Previews: PreviewProvider {
    static var previews: some View {
        FifthContentView()
    }
}

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
                }
                .buttonStyle(MultiStateButton(.transparentTwo, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.transparentTwo, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                }
                .buttonStyle(MultiStateButton(.transparentTwo, .large, .hug))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg"
                    )
                }
                .buttonStyle(MultiStateButton(.transparentTwo, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.transparentTwo, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                }
                .buttonStyle(MultiStateButton(.transparentTwo, .large, .hug))
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

import SwiftUI

struct SixthContentView: View {
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
                .buttonStyle(MultiStateButton(.transparentThree, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.transparentThree, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                }
                .buttonStyle(MultiStateButton(.transparentThree, .large, .hug))
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
                .buttonStyle(MultiStateButton(.transparentThree, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.transparentThree, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                }
                .buttonStyle(MultiStateButton(.transparentThree, .large, .hug))
                .disabled(true)
                Spacer()
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct SixthContentView_Previews: PreviewProvider {
    static var previews: some View {
        SixthContentView()
    }
}

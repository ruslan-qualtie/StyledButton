import SwiftUI

struct ThirdContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                }
                .buttonStyle(MultiStateButton(.cyan, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.cyan, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                }
                .buttonStyle(MultiStateButton(.cyan, .large, .hug))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                }
                .buttonStyle(MultiStateButton(.cyan, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.cyan, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                }
                .buttonStyle(MultiStateButton(.cyan, .large, .hug))
                .disabled(true)
                Spacer()
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct ThirdContentView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdContentView()
    }
}

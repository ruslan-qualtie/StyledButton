import SwiftUI

struct FirstContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "doc.text.below.ecg"
                    )
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "doc.text.below.ecg"
                    )
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
                .disabled(true)
                Spacer()
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct FirstContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstContentView()
    }
}

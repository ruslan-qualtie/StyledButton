import SwiftUI

struct FourthContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                }
                .buttonStyle(MultiStateButton(.white, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.white, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                }
                .buttonStyle(MultiStateButton(.white, .large, .hug))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                }
                .buttonStyle(MultiStateButton(.white, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                }
                .buttonStyle(MultiStateButton(.white, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                }
                .buttonStyle(MultiStateButton(.white, .large, .hug))
                .disabled(true)
                Spacer()
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct FourthContentView_Previews: PreviewProvider {
    static var previews: some View {
        FourthContentView()
    }
}

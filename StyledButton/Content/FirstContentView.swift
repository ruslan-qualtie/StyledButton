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
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "doc.text.below.ecg"
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
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

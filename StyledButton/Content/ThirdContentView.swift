import SwiftUI

struct ThirdContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.cyan))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                    .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.cyan))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.cyan))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.cyan))
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
                .buttonStyle(MultiStateButton(.cyan))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.cyan))
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

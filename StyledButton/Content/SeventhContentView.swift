import SwiftUI

struct SeventhContentView: View {
    var body: some View {
        HStack {
            Spacer(minLength: 50)
            VStack(alignment: .leading) {
                Button(action: action) {
                    ButtonLabel(text: "Save")
                        .buttonLabelStyle(.small, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                        .buttonLabelStyle(.medium, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.blue))
            }
            Spacer(minLength: 50)
            VStack(alignment: .leading) {
                Button(action: action) {
                    ButtonLabel(text: "Save")
                        .buttonLabelStyle(.small, .fill)
                }
                .buttonStyle(MultiStateButton(.blue))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                        .buttonLabelStyle(.medium, .fill)
                }
                .buttonStyle(MultiStateButton(.blue))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                        .buttonLabelStyle(.large, .fill)
                }
                .buttonStyle(MultiStateButton(.blue))
            }
            Spacer(minLength: 50)
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct SeventhContentView_Previews: PreviewProvider {
    static var previews: some View {
        SeventhContentView()
    }
}

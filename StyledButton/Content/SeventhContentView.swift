import SwiftUI

struct SeventhContentView: View {
    var body: some View {
        HStack {
            Spacer(minLength: 50)
            VStack(alignment: .leading) {
                Button(action: action) {
                    ButtonLabel(text: "Save")
                }
                .buttonStyle(MultiStateButton(.blue, .small, .hug))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                }
                .buttonStyle(MultiStateButton(.blue, .medium, .hug))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                }
                .buttonStyle(MultiStateButton(.blue, .large, .hug))
            }
            Spacer(minLength: 50)
            VStack(alignment: .leading) {
                Button(action: action) {
                    ButtonLabel(text: "Save")
                }
                .buttonStyle(MultiStateButton(.blue, .small, .fill))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                }
                .buttonStyle(MultiStateButton(.blue, .medium, .fill))
                Button(action: action) {
                    ButtonLabel(text: "Save")
                }
                .buttonStyle(MultiStateButton(.blue, .large, .fill))
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

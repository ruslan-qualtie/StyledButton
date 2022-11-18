import SwiftUI

struct SecondContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                }
                .buttonStyle(MultiStateButton(.transparentOne, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                }
                .buttonStyle(MultiStateButton(.transparentOne, .large, .hug))
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                }
                .buttonStyle(MultiStateButton(.transparentOne, .large, .hug))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                }
                .buttonStyle(MultiStateButton(.transparentOne, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                }
                .buttonStyle(MultiStateButton(.transparentOne, .large, .hug))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                }
                .buttonStyle(MultiStateButton(.transparentOne, .large, .hug))
                .disabled(true)
                Spacer()
            }
        }
    }

    private func action() {
        debugPrint("pressed")
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}

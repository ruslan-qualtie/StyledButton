import SwiftUI

struct SecondContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelStyle(.large, .hug)
                }
                .buttonStyle(MultiStateButton(.transparentOne))
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

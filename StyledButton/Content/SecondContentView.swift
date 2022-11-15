import SwiftUI

struct SecondContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelSmallStyle()
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentOne))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelSmallStyle()
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

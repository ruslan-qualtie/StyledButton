import SwiftUI

struct SixthContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentThree))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentThree))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentThree))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentThree))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentThree))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.transparentThree))
                .disabled(true)
                Spacer()
            }
        }
    }
    
    private func action() {
        debugPrint("pressed")
    }
}

struct SixthContentView_Previews: PreviewProvider {
    static var previews: some View {
        SixthContentView()
    }
}

import SwiftUI

struct FourthContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.white))
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.white))
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.white))
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.white))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.white))
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonStyle(MultiStateButton(.white))
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

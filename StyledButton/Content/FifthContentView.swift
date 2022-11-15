import SwiftUI

struct FifthContentView: View {
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
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-4").opacity(0.15),
                    activeColor: Color("geekblue-4").opacity(0.20)
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "View Report",
                        systemImage: "doc.text.below.ecg",
                        alignment: .trailing
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-4").opacity(0.15),
                    activeColor: Color("geekblue-4").opacity(0.20)
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-4").opacity(0.15),
                    activeColor: Color("geekblue-4").opacity(0.20)
                )
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
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-4").opacity(0.15),
                    activeColor: Color("geekblue-4").opacity(0.20)
                )
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
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-4").opacity(0.15),
                    activeColor: Color("geekblue-4").opacity(0.20)
                )
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "View Report")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-4").opacity(0.15),
                    activeColor: Color("geekblue-4").opacity(0.20)
                )
                .disabled(true)
                Spacer()
            }
        }
        .padding()
    }
    
    private func action() {
        debugPrint("pressed")
    }
}

struct FifthContentView_Previews: PreviewProvider {
    static var previews: some View {
        FifthContentView()
    }
}

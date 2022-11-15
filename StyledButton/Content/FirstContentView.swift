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
                    .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .white,
                    defaultColor: Color("geekblue-6").opacity(0.8),
                    hoverColor: Color("geekblue-6").opacity(0.9),
                    activeColor: Color("geekblue-6")
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "checkmark",
                        alignment: .trailing
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .white,
                    defaultColor: Color("geekblue-6").opacity(0.8),
                    hoverColor: Color("geekblue-6").opacity(0.9),
                    activeColor: Color("geekblue-6")
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .white,
                    defaultColor: Color("geekblue-6").opacity(0.8),
                    hoverColor: Color("geekblue-6").opacity(0.9),
                    activeColor: Color("geekblue-6")
                )
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(
                        text: "Done",
                        systemImage: "doc.text.below.ecg"
                    )
                    .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .white,
                    defaultColor: Color("geekblue-6").opacity(0.8),
                    hoverColor: Color("geekblue-6").opacity(0.9),
                    activeColor: Color("geekblue-6")
                )
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
                .buttonCustomStyle(
                    foregroundColor: .white,
                    defaultColor: Color("geekblue-6").opacity(0.8),
                    hoverColor: Color("geekblue-6").opacity(0.9),
                    activeColor: Color("geekblue-6")
                )
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .white,
                    defaultColor: Color("geekblue-6").opacity(0.8),
                    hoverColor: Color("geekblue-6").opacity(0.9),
                    activeColor: Color("geekblue-6")
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

struct FirstContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstContentView()
    }
}

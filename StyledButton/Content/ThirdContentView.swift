import SwiftUI

struct ThirdContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .black,
                    defaultColor: Color("cyan-5").opacity(0.8),
                    hoverColor: Color("cyan-5").opacity(0.9),
                    activeColor: Color("cyan-5")
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
                    foregroundColor: .black,
                    defaultColor: Color("cyan-5").opacity(0.8),
                    hoverColor: Color("cyan-5").opacity(0.9),
                    activeColor: Color("cyan-5")
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .black,
                    defaultColor: Color("cyan-5").opacity(0.8),
                    hoverColor: Color("cyan-5").opacity(0.9),
                    activeColor: Color("cyan-5")
                )
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .black,
                    defaultColor: Color("cyan-5").opacity(0.8),
                    hoverColor: Color("cyan-5").opacity(0.9),
                    activeColor: Color("cyan-5")
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
                    foregroundColor: .black,
                    defaultColor: Color("cyan-5").opacity(0.8),
                    hoverColor: Color("cyan-5").opacity(0.9),
                    activeColor: Color("cyan-5")
                )
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: .black,
                    defaultColor: Color("cyan-5").opacity(0.8),
                    hoverColor: Color("cyan-5").opacity(0.9),
                    activeColor: Color("cyan-5")
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

struct ThirdContentView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdContentView()
    }
}

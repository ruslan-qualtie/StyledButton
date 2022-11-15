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
                .buttonCustomStyle(
                    foregroundColor: Color("dark-indigo"),
                    defaultColor: .white.opacity(0.8),
                    hoverColor: .white.opacity(0.9),
                    activeColor: .white
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
                    foregroundColor: Color("dark-indigo"),
                    defaultColor: .white.opacity(0.8),
                    hoverColor: .white.opacity(0.9),
                    activeColor: .white
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("dark-indigo"),
                    defaultColor: .white.opacity(0.8),
                    hoverColor: .white.opacity(0.9),
                    activeColor: .white
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
                    foregroundColor: Color("dark-indigo"),
                    defaultColor: .white.opacity(0.8),
                    hoverColor: .white.opacity(0.9),
                    activeColor: .white
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
                    foregroundColor: Color("dark-indigo"),
                    defaultColor: .white.opacity(0.8),
                    hoverColor: .white.opacity(0.9),
                    activeColor: .white
                )
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(text: "Done")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("dark-indigo"),
                    defaultColor: .white.opacity(0.8),
                    hoverColor: .white.opacity(0.9),
                    activeColor: .white
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

struct FourthContentView_Previews: PreviewProvider {
    static var previews: some View {
        FourthContentView()
    }
}

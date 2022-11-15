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
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-6").opacity(0.1),
                    activeColor: Color("geekblue-6").opacity(0.2)
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-6").opacity(0.1),
                    activeColor: Color("geekblue-6").opacity(0.2)
                )
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelSmallStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-6").opacity(0.1),
                    activeColor: Color("geekblue-6").opacity(0.2)
                )
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "person.badge.plus")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-6").opacity(0.1),
                    activeColor: Color("geekblue-6").opacity(0.2)
                )
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelDefaultStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-6").opacity(0.1),
                    activeColor: Color("geekblue-6").opacity(0.2)
                )
                .disabled(true)
                Spacer()
                Button(action: action) {
                    ButtonLabel(systemImage: "info.circle")
                        .buttonLabelSmallStyle()
                }
                .buttonCustomStyle(
                    foregroundColor: Color("geekblue-3"),
                    hoverColor: Color("geekblue-6").opacity(0.1),
                    activeColor: Color("geekblue-6").opacity(0.2)
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

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}

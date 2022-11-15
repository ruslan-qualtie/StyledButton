 import SwiftUI

struct ButtonLabel<Title: View, Icon: View>: View {
    private let titleContent: () -> Title?
    private let iconContent: () -> Icon?
    private let iconAlignment: IconAlignment
    
    enum IconAlignment {
        case leading
        case trailing
    }
    
    init(
        @ViewBuilder title: @escaping () -> Title? = { nil },
        @ViewBuilder icon: @escaping () -> Icon? = { nil },
        alignment: IconAlignment
    ) {
        titleContent = title
        iconContent = icon
        iconAlignment = alignment
    }
    
    init(
        text: String,
        systemImage: String,
        alignment: IconAlignment = .leading
    ) where Title == Text, Icon == Image {
        self.init(
            title: { Text(text) },
            icon: { Image(systemName: systemImage) },
            alignment: alignment
        )
    }
    
    init(systemImage: String) where Title == Text, Icon == Image {
        self.init(icon: { Image(systemName: systemImage) }, alignment: .leading)
    }
    
    init(text: String) where Title == Text, Icon == Image {
        self.init(title: { Text(text) }, alignment: .leading)
    }
    
    var body: some View {
        switch iconAlignment {
        case .leading:
            HStack {
                iconContent()
                titleContent()
            }
        case .trailing:
            HStack {
                titleContent()
                iconContent()
            }
        }
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg")
        ButtonLabel(text: "Done", systemImage: "doc.text.below.ecg", alignment: .trailing)
        ButtonLabel(text: "Done")
        ButtonLabel(systemImage: "info.circle")
    }
}

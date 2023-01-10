import SwiftUI

struct IconLeftLabel<Title: View, Icon: View>: View {
    var title: Title
    var icon: Icon
    var packing: ButtonLabelPacking
    var labelContentSpacing: CGFloat
    var labelTitlePadding: CGFloat
    var labelIconPadding: CGFloat

    var body: some View {
        HStack(spacing: 0) {
            switch packing {
            case .spaceBetween:
                icon
                Spacer(minLength: 0)
                title
                    .padding(.leading, labelContentSpacing)
                    .padding(.trailing, labelTitlePadding)
            case .centerAligned:
                icon
                title
                    .padding(.leading, labelContentSpacing)
                    .padding(.trailing, labelTitlePadding)
            case .leftAligned:
                icon
                title
                    .padding(.leading, labelContentSpacing)
                    .padding(.trailing, labelTitlePadding)
                Spacer(minLength: 0)
            }
        }
        .padding(.leading, labelIconPadding)
    }
}

struct IconLeftLabel_Previews: PreviewProvider {
    static var previews: some View {
        IconLeftLabel(
            title: Text("Done"),
            icon: Image(systemName: "doc.text.below.ecg"),
            packing: .centerAligned,
            labelContentSpacing: 3,
            labelTitlePadding: 5,
            labelIconPadding: 2
        )
    }
}

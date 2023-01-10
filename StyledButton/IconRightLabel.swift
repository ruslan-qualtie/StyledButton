import SwiftUI

struct IconRightLabel<Title: View, Icon: View>: View {
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
                title
                    .padding(.trailing, labelContentSpacing)
                Spacer(minLength: 0)
                icon
                    .padding(.trailing, labelIconPadding)
            case .centerAligned:
                title
                    .padding(.trailing, labelContentSpacing)
                icon
                    .padding(.trailing, labelIconPadding)
            case .leftAligned:
                title
                    .padding(.trailing, labelContentSpacing)
                icon
                    .padding(.trailing, labelIconPadding)
                Spacer(minLength: 0)
            }
        }
        .padding(.leading, labelTitlePadding)
    }
}

struct IconRightLabel_Previews: PreviewProvider {
    static var previews: some View {
        IconRightLabel(
            title: Text("Done"),
            icon: Image(systemName: "doc.text.below.ecg"),
            packing: .centerAligned,
            labelContentSpacing: 3,
            labelTitlePadding: 5,
            labelIconPadding: 2
        )
    }
}

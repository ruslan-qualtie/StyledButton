import SwiftUI

struct NoIconLabel<Title: View>: View {
    var title: Title
    var packing: ButtonLabelPacking
    var labelTitlePadding: CGFloat

    var body: some View {
        HStack(spacing: 0) {
            switch packing {
            case .leftAligned:
                title
                Spacer(minLength: 0)
            default:
                title
            }
        }
        .padding(.horizontal, labelTitlePadding)
    }
}

struct NoIconLabell_Previews: PreviewProvider {
    static var previews: some View {
        NoIconLabel(
            title: Text("Done"),
            packing: .centerAligned,
            labelTitlePadding: 5
        )
    }
}

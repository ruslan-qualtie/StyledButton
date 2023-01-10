import SwiftUI

struct IconLabel<Icon: View>: View {
    var icon: Icon

    var body: some View {
        icon
    }
}

struct IconLabel_Previews: PreviewProvider {
    static var previews: some View {
        IconLabel(
            icon: Image(systemName: "doc.text.below.ecg")
        )
    }
}

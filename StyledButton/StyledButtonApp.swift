import SwiftUI

@main
struct StyledButtonApp: App {
    var body: some Scene {
        WindowGroup {
            Group {
                TabbedView()
            }
            .padding()
            .background(Color("dark-indigo"))
        }
    }
}

struct TabbedView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedTab) {
                Text("All Buttons").tag(0)
                Text("Width Options").tag(1)
                Text("Packing").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            switch(selectedTab) {
            case 0: ScrollView ([.horizontal, .vertical]) {
                AllButtonSizesView()
                    .frame(minWidth: 2000, minHeight: 1000)
            }
            case 1: ButtonsContentModesView()
            case 2: ButtonsContentPackingsView()
            default:
                EmptyView()
            }
        }
    }
}

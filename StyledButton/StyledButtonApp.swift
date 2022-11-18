import SwiftUI

@main
struct StyledButtonApp: App {
    var body: some Scene {
        WindowGroup {
            Group {
                SeventhContentView()
                FirstContentView()
                SecondContentView()
                ThirdContentView()
                FourthContentView()
                FifthContentView()
                SixthContentView()
            }
            .padding()
            .background(Color("dark-indigo"))
        }
    }
}

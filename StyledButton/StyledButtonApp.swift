import SwiftUI

@main
struct StyledButtonApp: App {
    var body: some Scene {
        WindowGroup {
            Group {
                FirstContentView()
                SecondContentView()
                ThirdContentView()
                FourthContentView()
                FifthContentView()
                SixthContentView()
            }
            .background(Color("dark-indigo"))
        }
    }
}

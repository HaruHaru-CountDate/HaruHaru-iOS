import SwiftUI
import HaruKit
import FlexibleKit

@main
struct HaruHaruApp: App {
    @State private var onBoarding = true
    init() {
        CustomFont.register()
    }
    
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}

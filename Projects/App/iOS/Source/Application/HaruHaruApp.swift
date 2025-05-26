import SwiftUI
import Component
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

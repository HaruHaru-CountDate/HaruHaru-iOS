import SwiftUI
import HaruKit

struct MainView: View {
    @State private var selection = true
    var body: some View {
        Image(image: .bg_default)
            .ignoresSafeArea()
            .overlay(alignment: .top) {
                VStack(spacing: 2) {
                    Text("우리가 만난지")
                        .font(.medium(size: 20))
                    Text("28일")
                        .font(.date(size: 50))
                    Text("2025.05.01")
                        .font(.date(size: 20))
                }
                .foregroundStyle(AppColor.main)
                .padding(.top, 100)
            }
    }
}


#Preview {
    MainView()
}

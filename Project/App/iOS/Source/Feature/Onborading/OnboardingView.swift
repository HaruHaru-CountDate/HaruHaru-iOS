//
//  OnboradingView.swift
//  HaruHaru
//
//  Created by dgsw27 on 5/13/25.
//

import SwiftUI
import HaruKit
import FlexibleKit

struct OnboardingView: View {
    @State private var isShowing = false
    var body: some View {
        Group {
            if isShowing {
                withAnimation(.easeInOut(duration: 0.5)) {
                    MainView()
                }
            } else {
                VStack {
                    Spacer()
                    Text("하루하루")
                        .font(.extraLight(size: 60))
                    Text("연인들을 위해")
                        .font(.thin(size: 20))
                    
                    Spacer()
                }
                .foregroundStyle(AppColor.main)
                .delayedTrigger(to: $isShowing, after: 2)
            }
        }
    }
}

#Preview {
    OnboardingView()
}

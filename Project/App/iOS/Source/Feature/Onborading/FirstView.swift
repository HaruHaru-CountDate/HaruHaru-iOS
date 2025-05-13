//
//  FirstView.swift
//  HaruHaru
//
//  Created by dgsw27 on 5/13/25.
//

import SwiftUI
import HaruKit

struct FirstView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("하루하루")
                .font(.extraLight(size: 60))
            Text("연인들을 위해")
                .font(.thin(size: 20))
            
            Spacer()
            DefaultButton(title: "시작하기") {
                print("시작하기 버튼 클릭됨")
            }
        }
        .foregroundStyle(AppColor.main)
        .padding(.horizontal, 2)
    }
}

#Preview {
    FirstView()
}

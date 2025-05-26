//
//  SelectionButton.swift
//  HaruHaru
//
//  Created by dgsw27 on 5/13/25.
//

import SwiftUI
import Component

struct SelectionButton: View {
    @Binding var isSelected: Bool
    let title: String
    let action: () -> Void
    var body: some View {
        Button {
            isSelected.toggle()
            action()
        } label: {
            VStack {
                Text(title)
                    .font(.bold(size: 20))
                if isSelected {
                    Rectangle()
                        .frame(width: 30, height: 2)
                }
            }
            .foregroundStyle(AppColor.main)
        }
    }
}

#Preview {
    HStack {
        hello()
        hello()
    }
}

struct hello: View {
    @State private var hello = false
    var body: some View {
        SelectionButton(isSelected: $hello, title: "안녕") {
            print("안녕")
        }
    }
}

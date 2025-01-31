//
//  AnimationTimingSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 30/01/25.
//

import SwiftUI

struct AnimationTimingSwiftUI: View {
    @State var isAnimating: Bool = false
    var body: some View {
        VStack {
            Button("Button: ") {
                self.isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(bounce: 0.7, blendDuration: 1))
            RoundedRectangle(cornerRadius: 20)
                .fill(.green)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.default)
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.linear(duration: 5))
            RoundedRectangle(cornerRadius: 20)
                .fill(.cyan)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeIn(duration: 5))
            RoundedRectangle(cornerRadius: 20)
                .fill(.purple)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: 5))
            RoundedRectangle(cornerRadius: 20)
                .fill(.mint)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: 5))
        }
    }
}

#Preview {
    AnimationTimingSwiftUI()
}

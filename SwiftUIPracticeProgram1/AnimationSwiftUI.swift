//
//  AnimationSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 30/01/25.
//

import SwiftUI

struct AnimationSwiftUI: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isAnimated.description)") {
//                withAnimation(.default.repeatForever(autoreverses: true)) {
//                withAnimation(.default.repeatCount(5, autoreverses: true)) {
//                withAnimation(.default.delay(1.5)) {
//                withAnimation(.default) {
                    self.isAnimated.toggle()
//                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(.degrees(isAnimated ? 360 : 0))//.rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .animation(.default.repeatForever(autoreverses: true))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default.repeatForever(autoreverses: true))
//                .rotationEffect(.degrees(isAnimated ? 360 : 0))
            Spacer()
        }
    }
}

#Preview {
    AnimationSwiftUI()
}

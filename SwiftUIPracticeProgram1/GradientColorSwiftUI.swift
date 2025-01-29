//
//  GradientColorSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 11/04/24.
//

import SwiftUI

struct GradientColorSwiftUI: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                .red
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
//                               startPoint: .topLeading,
//                               endPoint: .bottomTrailing
//                              )
                
//                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))]),
//                               startPoint: .topLeading,
//                               endPoint: .bottom
//                              )
                
//                RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]),
//                               center: .leading,
//                               startRadius: 5,
//                               endRadius: 400)
                
                AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), center: .topLeading, angle: .degrees(225))
                
                )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientColorSwiftUI()
}

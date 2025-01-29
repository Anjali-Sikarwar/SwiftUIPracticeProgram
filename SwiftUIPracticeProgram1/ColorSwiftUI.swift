//
//  ColorSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 10/04/24.
//

import SwiftUI

struct ColorSwiftUI: View {
    var color1 = #colorLiteral(red: 0.6715151668, green: 0.5649577379, blue: 1, alpha: 1)
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color(color1)
//                Color.primary
//       Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 300)
//            .shadow(radius: 10)
//            .shadow(color: Color.red, radius: 10, x: -10, y: 10)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: 20)
    }
}

#Preview {
    ColorSwiftUI()
}

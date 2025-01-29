//
//  ShapesSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 10/04/24.
//

import SwiftUI

struct ShapesSwiftUI: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 40)
//            .fill(Color.yellow)
//            .foregroundColor(.green)
//            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 10)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .square, dash: [30]))
//            .trim(from: 0.2, to: 1)
//            .stroke(Color.purple, lineWidth: 20)
            .frame(width: 200, height: 300)
            
    }
}

#Preview {
    ShapesSwiftUI()
}

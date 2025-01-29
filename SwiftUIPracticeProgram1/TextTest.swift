//
//  Text.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 21/03/24.
//

import SwiftUI

struct TextTest: View {
    var body: some View {
        Text("Hello World!".capitalized)
            .foregroundStyle(.orange)
//            .font(.largeTitle)
//            .bold()
//            .underline()
//            .strikethrough()
//            .underline(true, color: .yellow)
//            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .heavy, design: .monospaced))
//            .baselineOffset(0)
//            .kerning(20)
            .multilineTextAlignment(.center)
            .frame(width: 300, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextTest()
}

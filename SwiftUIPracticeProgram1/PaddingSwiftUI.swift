//
//  PaddingSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 18/04/24.
//

import SwiftUI

struct PaddingSwiftUI: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
             
            Text("Hello, this is anjali and we are learing swiftUI. For now we are checking how padding work. We added multiple line in this text to we'll give to leading edge. so let's try it. ")
//                .multilineTextAlignment(.center)
        }
//        .background(.red)
        .padding()
        .padding(.vertical, 10)
//        .background(.blue)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0.0,
                        y: 10
                )
        )
        .padding(.horizontal, 10)
//        .background(.green)
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.red)
//            .padding(.leading, 20)
//            .background(.yellow)
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        Instead of using frame we are using padding here
//            .frame(width: 100, height: 100)
//            .background(.yellow)
//            .padding()
//            .padding(.horizontal, 40)
//            .padding()
//            .padding(.leading, 40)
//
//            .background(Color.blue)
    }
}

#Preview {
    PaddingSwiftUI()
}

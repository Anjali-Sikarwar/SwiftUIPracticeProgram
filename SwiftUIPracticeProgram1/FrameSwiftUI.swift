//
//  FrameSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 16/04/24.
//

import SwiftUI

struct FrameSwiftUI: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.red)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .background(.green)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(.green)
        
        Text("Hello, World!")
            .background(Color.green)
            .frame(height: 100, alignment: .topLeading)
            .background(Color.yellow)
            .frame(height: 150, alignment: .bottomTrailing)
            .background(Color.orange)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.cyan)
            .frame(width: 400, height: 300, alignment: .center)
            .background(Color.brown)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(Color.mint)
    }
}

#Preview {
    FrameSwiftUI()
}

//struct FrameSwiftUI_Previews: PreviewProvider {
//    static var previews: some View {
//        FrameSwiftUI()
//    }
//}

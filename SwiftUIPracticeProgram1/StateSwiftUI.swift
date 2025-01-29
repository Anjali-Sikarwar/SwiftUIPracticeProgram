//
//  StateSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 23/01/25.
//

import SwiftUI

struct StateSwiftUI: View {
    
    @State var backgroundColor: Color = Color.red// #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
    @State var myTitle:String = "My Title"
    @State var count = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all )
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20) {
                    Button("Button1 (+)") {
                        backgroundColor = .green
                        myTitle = "Button 1 was pressed"
                        count += 1
                        
                    }
                    Button("Button2 (-) ") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity )
//        .background(.red)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    StateSwiftUI()
}

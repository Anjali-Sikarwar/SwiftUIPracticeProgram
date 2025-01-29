//
//  ExtractedFunctionsSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 25/01/25.
//

import SwiftUI

struct ExtractedFunctionsSwiftUI: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Hello")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        self.backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsSwiftUI()
}

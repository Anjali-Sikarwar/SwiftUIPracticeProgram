//
//  ConditionalStatementSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 29/01/25.
//

import SwiftUI

struct ConditionalStatementSwiftUI: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle Button: \(showCircle.description)") {
//                self.showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectangle.description)") {
//                self.showRectangle.toggle()
//            }
//           
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle{
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100)
//            }
            Spacer()
        }
        
    }
}

#Preview {
    ConditionalStatementSwiftUI()
}

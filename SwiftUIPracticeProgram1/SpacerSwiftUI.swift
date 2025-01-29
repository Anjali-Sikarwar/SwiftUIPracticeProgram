//
//  SpacerSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 18/04/24.
//

import SwiftUI

//If we want to set objects with equal distance than at the place of spacing we can use Spacer(). Spacer size always same. Spacer() is automatic resizeable

//Spacer(minLength: 0 ) will only work with padding if we are not using padding then it'll not work.

struct SpacerSwiftUI: View {
    var body: some View {
                VStack {
                    
                    HStack(spacing: 0) {
                        Image(systemName: "xmark")
                        Spacer()
//                            .frame(height: 10)
//                            .background(.blue)
                        Image(systemName: "gear")
                    }
                    .font(.title)
        //            .background(.orange)
                    .padding(.horizontal)
        //            .background(.yellow)
                    
                    
                    Spacer()
//                        .frame(width: 10)
//                        .background(.blue)
                    
                    Rectangle()
                        .frame(height: 55)
                }
//                .background(.yellow)
        
        
//        HStack(/*spacing: 200*/) {
//            Spacer(minLength: 0)//minLength: nil
//                .frame(height: 10)
//                .background(.orange)
////                .frame(height: 10)
////                .background(.orange)
//            Rectangle()
//                .frame(width: 100, height: 100)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100 )
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100 )
//            
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//        }
//        .background(.yellow)
////        .padding(.horizontal,200)
//        .background(.red)
    }
}

#Preview {
    SpacerSwiftUI()
}

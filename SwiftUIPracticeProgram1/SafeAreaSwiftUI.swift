//
//  SafeAreaSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 11/01/25.
//

import SwiftUI

struct SafeAreaSwiftUI: View {
    var body: some View {
        
        ScrollView {
            Text("Title Goes Here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { Index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
            
        }
            .background(Color.red)
        
        
        
        
//        ZStack {
////            Color(.gray)
//            ScrollView {
//                Text("Title Goes Here")
//                    .font(.largeTitle)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                
//                ForEach(0..<10) { Index in
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(Color.white)
//                        .frame(height: 150)
//                        .shadow(radius: 10)
//                        .padding(20)
//                }
//                
//            }
////            .background(Color.red)
//        }
//        .background(Color.blue)
        
        
        
        
        
//        ZStack {
////            Color(.red)
//            VStack {
////                Color(.blue)
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
////                Text("Bye Bye")
////                Spacer()
//            }
//                .frame(maxWidth: .infinity)
//                .background(Color.green)
//                .padding(.bottom)
//                .padding(.top)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
////        .background(Color.red)
//        
            
    }
}

#Preview {
    SafeAreaSwiftUI()
}

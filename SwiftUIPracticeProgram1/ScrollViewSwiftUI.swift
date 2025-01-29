//
//  ScrollViewSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 24/06/24.
//

import SwiftUI

struct ScrollViewSwiftUI: View {
    var body: some View {
        
//        Now we are using horizontal scroll view in vertical scroll view
        
        ScrollView{
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius:  25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
        
        
        
        
//        ScrollView with different parameters vertically
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//
//            }
//        })
        
        
//         ScrollView with different parameters vertically
//        ScrollView(.vertical, showsIndicators: false, content: {
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//
//            }
//        })
        
//        Normal ScrollView
//        ScrollView{
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//                
//            }
//        }
        
    }
}

#Preview {
    ScrollViewSwiftUI()
}

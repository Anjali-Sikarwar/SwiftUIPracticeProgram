//
//  StacksSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 16/04/24.
//

import SwiftUI

struct StacksSwiftUI: View {
    //Hstacks- Horizontal
    //Vstack - Vertical
    //Zstack - zIndex (back to front)
    var body: some View {
        
        VStack(alignment: .leading ,spacing: 40) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundStyle(Color.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
//        ZStack(alignment: .top){
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading, spacing: 20) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack(alignment: .bottom, spacing: 0) {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 80, height: 80)
//                    Rectangle()
//                        .fill(Color.orange)
//                        .frame(width: 100, height: 100)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
//        VStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100, height: 100)
//        }
        
//        HStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100, height: 100)
//        }
        
//        ZStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 140, height: 140)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 120, height: 120)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100, height: 100)
//        }
    }
}

#Preview {
    StacksSwiftUI()
}

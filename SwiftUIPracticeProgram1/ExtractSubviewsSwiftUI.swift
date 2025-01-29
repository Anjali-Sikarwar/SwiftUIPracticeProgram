//
//  ExtractSubviewsSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 25/01/25.
//

import SwiftUI

struct ExtractSubviewsSwiftUI: View {
    var body: some View {
        ZStack {
            //background
            Color(Color.mint)
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack(spacing: 20) {
            myItem(title: " Apple ", count: 1, color: .red)
            myItem(title: "Orange", count: 10, color: .orange)
            myItem(title: "Banana", count: 12, color: .yellow)
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        
    }
    
}

#Preview {
    ExtractSubviewsSwiftUI()
}

struct myItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .foregroundStyle(.white)
        .cornerRadius(10)
    }
}

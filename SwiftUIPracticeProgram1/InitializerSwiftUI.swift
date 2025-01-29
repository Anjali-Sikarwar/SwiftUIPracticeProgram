//
//  InitializerSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 22/04/24.
//

import SwiftUI

struct InitializerSwiftUI: View {
//    let backgroundColor: Color = Color.red
//    If we'll not give default value to backgroundColor constant then it will give error whenever we initialize InitializerSwfitUI (Line number 31)
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init(backgroundColor: Color, count: Int, title: String) {
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
//    }
    
//    init(count: Int, title: String) {
//        self.count = count
//        self.title = title
//        
//        if title == "Apples" {
//            self.backgroundColor = Color.red
//        }else {
//            self.backgroundColor = Color.orange
//        }
//    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple  {
            self.title = "Apples"
            self.backgroundColor = Color.red
        }else {
            self.title = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
//    InitializerSwiftUI()
    HStack {
        InitializerSwiftUI(count: 34, fruit: .apple)
        InitializerSwiftUI(count: 55, fruit: .orange)
    }
}

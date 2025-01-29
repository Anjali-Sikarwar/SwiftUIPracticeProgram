//
//  ForEachLoopSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 22/04/24.
//

import SwiftUI

struct ForEachLoopSwiftUI: View {
    let data:[String] = ["Hii", "Hello", "Namaste", "Ram Ram"]
    let myString: String = "Hello"
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            HStack {
                ForEach(0..<10) { index in
                    Circle()
                        .frame(width: 10, height: 10)
                }
            }
//            ForEach(0..<10) { index in
////                Text("\(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Hello, \(index)")
//                }
//            }
        }
    }
}

#Preview {
    ForEachLoopSwiftUI()
}

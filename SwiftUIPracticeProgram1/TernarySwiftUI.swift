//
//  TernarySwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 29/01/25.
//

import SwiftUI

struct TernarySwiftUI: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            .foregroundColor(.black)
            
            Text(isStartingState ? "START" : "END")
                .font(.headline)
                .foregroundColor(isStartingState ? Color.red : Color.blue)
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 400 : 50)
            
            Spacer()
            
        }
    }
}

#Preview {
    TernarySwiftUI()
}

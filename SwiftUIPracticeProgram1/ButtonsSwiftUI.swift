//
//  ButtonsSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 12/01/25.
//

import SwiftUI

struct ButtonsSwiftUI: View {
    
    @State var title: String = "This is my title"
    let mColor : UIColor = #colorLiteral(red: 0.6290548444, green: 0.1526679993, blue: 0, alpha: 1)
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            
            Button("1. Press Me!") {
                self.title = "1st button Pressed"
            }
            .foregroundStyle(Color.red)
            
            Button(action: {
                self.title = "SAVE button pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        )
            })
            
            Button(action: {
                self.title = "Like Button pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color(self.mColor))
                    )
            })
            
            Button {
                self.title = "Finish button pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }

            
        }
    }
}

#Preview {
    ButtonsSwiftUI()
}

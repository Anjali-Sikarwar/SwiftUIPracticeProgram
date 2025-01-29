//
//  BindingSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 25/01/25.
//

import SwiftUI

struct BindingSwiftUI: View {
    @State var backgroundColor: Color = Color.green
    @State var title : String = "Title"
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    @State var isButtonClicked = false
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.green
            title = "This is button below"
            isButtonClicked = true
        } label: {
            Text("Button")
                .foregroundStyle(isButtonClicked ? .black : .white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}



#Preview {
    BindingSwiftUI()
}

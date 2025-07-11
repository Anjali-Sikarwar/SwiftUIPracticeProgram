//
//  SheetsSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 04/07/25.
//

import SwiftUI

struct SheetsSwiftUI: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.red)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.yellow.ignoresSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
            }
        }
    }
}

#Preview {
    SheetsSwiftUI()
}


//We can not use two sheet or fullScreenCover in single view and Do not use conditional logic inside sheet

// Can use fullScreenCover and sheet in a single view

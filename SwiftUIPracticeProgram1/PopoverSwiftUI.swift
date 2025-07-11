//
//  PopoverSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 09/07/25.
//


//Sheets
//Animation
//Transition


import SwiftUI

struct PopoverSwiftUI: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            //METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 50)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .animation(.spring(), value: showNewScreen)
            
            //METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 50)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button {
                //METHOD 1 - SHEET
//                dismiss()
                
//                METHOD 2 - TRANSITION && METHOD 3 - ANIMATION OFFSET
                showNewScreen.toggle()
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    PopoverSwiftUI()
//    NewScreen()
}

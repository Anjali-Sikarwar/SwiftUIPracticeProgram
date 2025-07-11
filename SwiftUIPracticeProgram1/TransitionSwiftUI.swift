//
//  TransitionSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 03/02/25.
//

import SwiftUI

struct TransitionSwiftUI: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                Spacer()
                    .frame(height: 70)
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
                
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)))
                
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TransitionSwiftUI()
}

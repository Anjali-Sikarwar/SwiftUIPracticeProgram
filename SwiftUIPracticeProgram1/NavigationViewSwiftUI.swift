//
//  NavigationViewSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 11/07/25.
//

import SwiftUI

struct NavigationViewSwiftUI: View {
    @State private var showMessage = false
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    NavigationLink("Hello World") {
                        OtherScreen()
                    }
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationTitle("All Inboxes")
                //            .navigationBarTitleDisplayMode(.automatic)
                //            .toolbar(.hidden)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            showMessage = true
                        } label: {
                            Image(systemName: "flame.fill")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "gear")
                        }
                        
                    }
                }
                
                if showMessage {
                    Text("Flame button clicked")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding()
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    showMessage = false
                                }
                            }
                }
            }
        }
    }
}

struct OtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
                .navigationTitle("New Inbox")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Text("Back Button")
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                        .font(.headline)
                }
                
                Text("Button for back")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
        }
    }
}

#Preview {
    NavigationViewSwiftUI()
}

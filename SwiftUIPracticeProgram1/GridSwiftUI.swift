//
//  GridSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 25/06/24.
//

import SwiftUI

struct GridSwiftUI: View {
    
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            LazyVGrid(
                columns: column,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]) //Useing pinnedViews we can stop the header to the top or footer
                   {
                    Section {
                        ForEach(0..<50) { index in
                        Rectangle()
                                .frame (height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .padding()
                    }
                    
                    Section {
                        ForEach(0..<50) { index in
                        Rectangle()
                                .fill(Color.red)
                                .frame (height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .padding()
                    }

                }
        }
    }
}

#Preview {
    GridSwiftUI()
}

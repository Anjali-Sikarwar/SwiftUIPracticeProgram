//
//  ImageSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 16/04/24.
//

import SwiftUI

struct ImageSwiftUI: View {
    var body: some View {
        Image("logout")
        //If can change rendering mode from assets also. from attribute inspector change render as property as templte. After that there is no need to use .renderingMode property here
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
//            .clipped()
//            .cornerRadius(40) //1000
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 30)
//                Ellipse()
            
//            )  we can choose any shape here
    }
}

#Preview {
    ImageSwiftUI()
}

//
//  TLButton.swift
//  TodoGo
//
//  Created by 김성민 on 2/28/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            // Action
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundStyle(Color.white)
                   .bold()
           }
       }) //end of button
    }//end of body
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        //action
    }
}

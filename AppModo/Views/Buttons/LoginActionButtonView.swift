//
//  LoginActionButtonView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct LoginActionButtonView: View {
    
    let title : String
    
    var body: some View {
        Button {
            
        } label : {
            Text(title)
                .frame(maxWidth:.infinity, maxHeight: 50)
                .font(.body)
                .foregroundColor(Color(.black))
                .background(Color(Colors.SECONDARY_GRAY_3))
                .cornerRadius(15)
        }
    }
}

#Preview {
    LoginActionButtonView(title: "Test")
}

//
//  UserAvatarView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct UserAvatarView: View {
    
    let name: String
    
    var body: some View {
        Text(concatFirstLetters(text: name))
            .fontWeight(.semibold)
            .frame(width:70,height:70)
            .background(Color(Colors.SECONDARY_PAYMENT_10))
            .foregroundColor(Color(Colors.PAYMENT_DARK))
            .cornerRadius(50)
        Text(name)
            .fontWeight(.bold)
            .padding(.top, Spacing.XSMALL)
    }
    
}

#Preview {
    UserAvatarView(name: "Gonzalo Berro")
}

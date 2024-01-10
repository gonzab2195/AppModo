//
//  Login.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct Login: View {
    
    @State var eyeOpen = false
    @State var password = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            
            UserAvatarView(name: "Gonzalo Berro")
            
            Spacer().frame(height: 60)
            
            Text("Ingresá tu clave")
            
            PasswordDotView(eyeOpen: $eyeOpen, password: password)
            
            
            Spacer()
            
            HStack {
                LoginActionButtonView(title: "Olvidé mi clave")
                LoginActionButtonView(title: "Cambié mi número")
            }
            .padding(.horizontal, Spacing.XMEDIUM)
            .padding(.bottom, Spacing.XSMALL)
            
            KeypadView(password: $password)
        
            
        }
    }

    
}

struct Login_Preview : PreviewProvider {
    
    static var previews: some View {
        Login()
    }
    
}










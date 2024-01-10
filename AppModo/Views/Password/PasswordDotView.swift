//
//  PasswordDotView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct PasswordDotView: View {
    
    
    @Binding var eyeOpen : Bool
    let password: String
    
    var body: some View {
        HStack(spacing: Spacing.XMEDIUM) {
            ForEach(0..<6) { index in
                
                if eyeOpen && password.count > index && !password.isEmpty {
                    DigitView(letterIndex: index, password: password)
                    
                }else {
                    DotView(index: index, password: password)
                }
                
                
            }
            EyeButtonView(eyeOpen: $eyeOpen)
        }
        .padding(.top, Spacing.XSMALL)
        
    }
}

#Preview {
    PasswordDotView(eyeOpen: .constant(false), password: "")
}





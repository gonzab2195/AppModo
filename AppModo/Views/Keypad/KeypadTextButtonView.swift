//
//  KeypadButtonContent.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct KeypadTextButtonView: View {
    
    let keypad : Keypad
    @Binding var password: String
    
    var body: some View {
       
        if !keypad.imageName.rawValue.isEmpty {
            ImageKeypadView(keypad: keypad, password: $password)
        }else {
            NumberKeypadView(keypad: keypad, password: $password)
        }
        
    }
}

#Preview {
    KeypadTextButtonView(keypad: singleKeypad, password: .constant(""))
}



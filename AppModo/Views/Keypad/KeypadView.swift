//
//  KeypadView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct KeypadView: View {
    
    @Binding var password: String
    
    var body: some View {
        ForEach(0..<4) { xIndex in
            HStack {
                ForEach(0..<3) { yIndex in
                    
                    let index = xIndex * 3 + yIndex
                    let keypadInfo = keypadArray[index]
                    
                    VStack{
                        KeypadTextButtonView(keypad: keypadInfo, password: $password)
                        }
                    }
            }
            .padding(.horizontal, Spacing.XSMALL)
        }
    }
}

#Preview {
    KeypadView(password: .constant(""))
}

//
//  NumberKeypadView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct NumberKeypadView: View {
    
    let keypad: Keypad
    @Binding var password: String
    
    var body: some View {
        Button {
            
            password = password.count < 6 ? password + keypad.mainText.trimmingCharacters(in: .whitespacesAndNewlines) : password
            
        } label: {
            VStack {
                Text(keypad.mainText)
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                
                if !keypad.subText.isEmpty{
                    Text(keypad.subText)
                        .font(.system(size: 11))
                        .fontWeight(.semibold)
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:50)
            .background(Color(Colors.SECONDARY_GRAY_3))
            .foregroundColor(Color(.black))
            .cornerRadius(10)
            
        }
        
    }
}


#Preview {
    NumberKeypadView(keypad:singleKeypad, password: .constant(""))
}

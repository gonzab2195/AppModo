//
//  ImageKeypadView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct ImageKeypadView: View {
    
    let keypad: Keypad
    @Binding var password: String
    
    var body: some View {
        Button {
            executeImageActions()
        } label: {
            VStack {
                Image(keypad.imageName.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:40, height: 40)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:50)
            .background(Color(Colors.SECONDARY_GRAY_3))
            .foregroundColor(Color(.black))
            .cornerRadius(10)
        }
        
    }
    
    func executeImageActions(){
        
        switch(keypad.imageName) {
        case .Empty:
            return
        case .DeleteArrow:
            password = String(password.dropLast())
        case .FaceId:
            return
        }
        
    }
}

#Preview {
    ImageKeypadView(keypad: singleKeypad, password:.constant(""))
}

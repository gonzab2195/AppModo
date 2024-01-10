//
//  EyeButtonView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct EyeButtonView: View {
    
    @Binding var eyeOpen : Bool
    
    var body: some View {
        Button {
            eyeOpen = !eyeOpen
        } label: {
            Image(eyeOpen ? "eye-close" : "eye-open")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40, height:40)
        }
    }
}

#Preview {
    EyeButtonView(eyeOpen: .constant(false))
}

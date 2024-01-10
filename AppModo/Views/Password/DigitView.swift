//
//  DigitView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct DigitView: View {
    
    let letterIndex: Int
    let password: String
    
    func getLetter() -> String {
        
        let index = password.index(password.startIndex, offsetBy: letterIndex)
        
        return String(password[index])
    }
    
    var body: some View {
        Text(getLetter())
    }
}

#Preview {
    DigitView(letterIndex: 0, password: "1234")
}

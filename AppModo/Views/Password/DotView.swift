//
//  DowView.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import SwiftUI

struct DotView: View {
    
    let index: Int
    let password: String
    
    var body: some View {
        Circle().frame(width:12).foregroundColor(
            password.count > index ? Color(Colors.PAYMENT_DEFAULT) : Color(Colors.SECONDARY_GRAY_8)
        )
    }
}

#Preview {
    DotView(index: 0, password: "1234")
}

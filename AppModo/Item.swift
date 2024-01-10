//
//  Item.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

//
//  StringUtils.swift
//  AppModo
//
//  Created by Gonzalo Berro on 10/01/2024.
//

import Foundation

func concatFirstLetters(text: String) -> String {
    let words = text.components(separatedBy: " ")
    let firstLetters = words.map { $0.prefix(1) }
    return firstLetters.joined().uppercased()
}

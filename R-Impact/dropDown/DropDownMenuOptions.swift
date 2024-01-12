//
//  DropDownMenuOptions.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/19/23.
//

import Foundation

struct DropDownMenuOption: Identifiable, Hashable{
    let id = UUID().uuidString
    let option: String
}

extension DropDownMenuOption{
    static let testOneItem: DropDownMenuOption = DropDownMenuOption(option: "Shirts")
    static let testAllItems: [DropDownMenuOption] = [
        DropDownMenuOption(option: "Food scraps"),
        DropDownMenuOption(option: "Shirts"),
        DropDownMenuOption(option: "Pants"),
        DropDownMenuOption(option: "Ink cartridges"),
        DropDownMenuOption(option: "Phones"),
    ]
}

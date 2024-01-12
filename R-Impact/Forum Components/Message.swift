//
//  Message.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/17/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}

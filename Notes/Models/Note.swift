//
//  Note.swift
//  Notes
//
//  Created by Мария Газизова on 09.02.2024.
//

import Foundation

struct Note: Codable, Hashable {
    var id: Int
    var name: String
    var text: String
}

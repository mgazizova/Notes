//
//  FolderModel.swift
//  Notes
//
//  Created by Мария Газизова on 09.02.2024.
//

import Foundation

struct Folder1: Codable, Hashable {
    var name: String
    var notes: [Note]
}

//
//  ModelData.swift
//  Notes
//
//  Created by Мария Газизова on 09.02.2024.
//

import Foundation

@Observable
class ModelData {
    var folders: [Folder] = load("Notes.json")
//    var notes: [Note] = load("Notes.json")
//    
//    var folders: [Folder] {
//        notes.map {
//            $0.folder
//        }
//        .histogram
//        .map {
//            Folder(
//                name: $0.key,
//                numberOfNotes: $0.value
//            )
//        }
//    }
    
    private static func load<T: Decodable> (_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) file in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't find \(filename) file in main bundle: \(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self): \(error)")
        }
    }
}
//
//extension Sequence where Element: Hashable{
//    var histogram: [Element: Int] {
//        return self.reduce(into: [:]) { counts, element in
//            counts[element, default: 0] += 1
//        }
//    }
//}

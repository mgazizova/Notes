//
//  NotesApp.swift
//  Notes
//
//  Created by Мария Газизова on 08.02.2024.
//

import SwiftUI

@main
struct NotesApp: App {
    @State private var modelData = ModelData()
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

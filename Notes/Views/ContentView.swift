//
//  ContentView.swift
//  Notes
//
//  Created by Мария Газизова on 08.02.2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var folders: FetchedResults<Folder>
    
    
    var body: some View {
        List(folders) {ffolder in
            Text(ffolder.name ?? "No name")
        }
        
        Button("add") {
            let folderList = ["first", "second"]
            let folder = Folder(context: moc)
            folder.name = folderList.randomElement()!
            folder.id = UUID()
            
            try? moc.save()
        }
        FolderList()
            .padding()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

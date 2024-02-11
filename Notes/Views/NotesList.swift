//
//  NotesList.swift
//  Notes
//
//  Created by Мария Газизова on 11.02.2024.
//

import SwiftUI

struct NotesList: View {
    @Environment(ModelData.self) var modelData
    var folder: Folder
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(folder.name)
                    .font(.title)
                    .bold()
                
                Spacer()
            }
            
            ScrollView {
                ForEach(folder.notes, id: \.self) { note in
                    Text(note.name)
                }
            }
        }
    }
}

#Preview {
    NotesList(folder: ModelData().folders[0])
        .environment(ModelData())
}

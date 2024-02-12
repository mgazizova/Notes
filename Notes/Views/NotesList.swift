//
//  NotesList.swift
//  Notes
//
//  Created by Мария Газизова on 11.02.2024.
//

import SwiftUI

struct NotesList: View {
    @Environment(ModelData.self) var modelData
    private let columns = [GridItem(.flexible()), 
                           GridItem(.flexible())]
    
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
                LazyVGrid(columns: columns) {
                    ForEach(folder.notes, id: \.self) { note in
                        NoteCell(note: note)
                    }
                }
            }
        }
    }
}

#Preview {
    NotesList(folder: ModelData().folders[0])
        .environment(ModelData())
}

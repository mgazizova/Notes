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
    
    var folder: Folder1
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(folder.name)
                    .font(.title)
                    .bold()
                
                Spacer()
            }
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(folder.notes, id: \.self) { note in
                        NavigationLink {
                            NoteDetails(folder: folder.name,
                                        note: note)
                        } label: {
                            NoteCell(note: note)
                                .tint(.black)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}

#Preview {
    NotesList(folder: ModelData().folders[2])
        .environment(ModelData())
}

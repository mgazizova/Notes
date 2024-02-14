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
            
            NoteCell(note: ModelData().folders[0].notes[0])
                .tint(.black)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(folder.notes, id: \.self) { note in
                        NavigationLink {
                            NoteDetails(note: note)
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
    NotesList(folder: ModelData().folders[0])
        .environment(ModelData())
}

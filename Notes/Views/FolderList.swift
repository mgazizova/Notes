//
//  FolderList.swift
//  Notes
//
//  Created by Мария Газизова on 09.02.2024.
//

import SwiftUI

struct FolderList: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(modelData.folders, id: \.self) { folder in
                    NavigationLink {
                        NotesList(folder: folder)
                    } label: {
                        FolderCell(folder: folder)
                            .background(.darkJungleGreen)
                            .clipShape(.buttonBorder)
                    }
                }
            }
            .navigationTitle("folders")
        }
    }
}

#Preview {
    FolderList()
        .environment(ModelData())
}

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
        NavigationSplitView {
            ScrollView {
                ForEach(modelData.folders, id: \.self) { folder in
                    NavigationLink {
                        NotesList(folder: folder)
                    } label: {
                        FolderCell(folder: folder)
                            .background(.red)
                            .clipShape(.buttonBorder)
                    }
                }
            }
            .navigationTitle("folders")
        } detail: {
            Text("Select folder")
        }
    }
}

#Preview {
    FolderList()
        .environment(ModelData())
}

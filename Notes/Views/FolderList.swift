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
            List {
                ForEach(modelData.folders, id: \.self) { folder in
                    FolderCell(folder: folder)
                        .listRowBackground(Color.black)
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

//
//  Folder.swift
//  Notes
//
//  Created by Мария Газизова on 09.02.2024.
//

import SwiftUI

struct FolderCell: View {
    var folder: Folder
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(folder.name)
                .font(.caption)
                .foregroundStyle(.gray)
            HStack {
                Spacer()
                Text("\(folder.notes.count)")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
        .background(.black)
        .padding()
    }
}

#Preview {
    FolderCell(folder: Folder(name: "Name of the folder", notes: []))
}

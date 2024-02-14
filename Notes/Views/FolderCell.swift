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
                .foregroundStyle(.coolGray)
            HStack {
                Spacer()
                Text("\(folder.notes.count)")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
        .padding()
    }
}

#Preview {
    FolderCell(folder: Folder(name: "Name of the folder", notes: []))
        .background(.black)
}

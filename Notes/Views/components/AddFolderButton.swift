//
//  AddFolderButton.swift
//  Notes
//
//  Created by Мария Газизова on 26.02.2024.
//

import SwiftUI

struct AddFolderButton: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "plus")
        }
        .padding()
        .background(.darkCoral)
        .foregroundStyle(.white)
    }
}

#Preview {
    AddFolderButton()
}

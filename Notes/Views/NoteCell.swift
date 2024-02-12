//
//  NoteCell.swift
//  Notes
//
//  Created by Мария Газизова on 12.02.2024.
//

import SwiftUI

struct NoteCell: View {
    var note: Note
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(note.name)
                .bold()
                .padding(.bottom, 30)
                .fixedSize(horizontal: false, vertical: true)
            Text(note.text)
                .foregroundStyle(.gray)
        }
        .padding()
        .frame(width: 180, height: 180)
        .background(.quaternary)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    NoteCell(note: ModelData().folders[0].notes[0])
}

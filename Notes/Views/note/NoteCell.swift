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
            HStack {
                Text(note.name)
                    .bold()
                    .padding(.bottom, 30)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
            }
            Text(note.text)
                .foregroundStyle(.coolGray)
                .multilineTextAlignment(.leading)
            Spacer()
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 180, maxHeight: 180)
        .background(.lightGray)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    NoteCell(note: ModelData().folders[1].notes[0])
}

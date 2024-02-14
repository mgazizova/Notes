//
//  NoteDetails.swift
//  Notes
//
//  Created by Мария Газизова on 14.02.2024.
//

import SwiftUI

struct NoteDetails: View {
    var note: Note
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("folder name")
                Image(systemName: "smallcircle.circle.fill")
                    .scaleEffect(0.7)
                Text(DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .none))
                Spacer()
            }
            .foregroundStyle(.secondary)
            Text(note.name)
                .font(.title)
                .bold()
            
            ScrollView {
                Text(note.text)
            }
        }
    }
}

#Preview {
    NoteDetails(note: ModelData().folders[0].notes[0])
}

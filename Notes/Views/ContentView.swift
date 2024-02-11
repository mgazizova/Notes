//
//  ContentView.swift
//  Notes
//
//  Created by Мария Газизова on 08.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FolderList()
            .padding()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

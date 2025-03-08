//
//  ContentView.swift
//  Eater
//
//  Created by 刀子叉子勺 on 2025/3/8.
//

import SwiftUI

struct ContentView: View {

    @State private var selection: String = dishSelection(arrayDishes: dishes)

    var body: some View {

        VStack {
            Spacer()

            Text(selection)
                .font(.system(size: 48))
                .padding()

            Spacer()

            Button(action: { selection = dishSelection(arrayDishes: dishes) }) {
                Label("Click to Choose", systemImage: "cursorarrow.click")
            }
            .padding()
            .bold()
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.blue, lineWidth: 1)
            )

            Spacer()
        }
        .padding()

    }
}

// Set preview
#Preview { ContentView() }
#Preview("DarkView") { ContentView().preferredColorScheme(.dark) }
#Preview("Chinese") {
    ContentView()
        .environment(\.locale, Locale(identifier: "zh_CN"))
}

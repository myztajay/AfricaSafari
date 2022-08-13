//
//  ContentView.swift
//  AfricaSafari
//
//  Created by Rafael Fernandez on 8/12/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode(fileToDecode: "animals.json")
    var body: some View {
        NavigationView {
            List {
                CoverView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            } //MARK: - LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //MARK: - NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}

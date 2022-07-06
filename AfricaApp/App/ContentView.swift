//
//  ContentView.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 04.07.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    //MARK: Body
    var body: some View {
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //: Link
                }
            } //: List
            .navigationBarTitle("Africa", displayMode: .large)
        } //: Navigation
    } //: Body
}

//MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

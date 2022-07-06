//
//  ExternalWeblinkView.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 06.07.2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: Properties
    
    var animal: Animal
    
    //MARK: Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://www.wikipedia.org"))!)
                    
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } //: HStack
        } //: Box
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

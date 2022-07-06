//
//  InsetGalleryView.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 06.07.2022.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: Properties
    
    var animal: Animal
    
    //MARK: Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: Loop
            } //: HStack
        } //: Scroll
    }
}

//MARK: Preview

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  GalleryView.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 04.07.2022.
//

import SwiftUI

struct GalleryView: View {
    //MARK: Properties
    
    //MARK: Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        } //: Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//MARK: Preview

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
            .previewDevice("iPhone 11")
    }
}

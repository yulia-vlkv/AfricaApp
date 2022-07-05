//
//  MainView.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 04.07.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Locations")
                }
            GalleryView()
                .tabItem{
                Image(systemName: "photo")
                Text("Gallery")
            }
        } //: TABVIEW
    }
}

//MARK: Preview

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 11")
    }
}

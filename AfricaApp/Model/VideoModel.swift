//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 06.07.2022.
//

import SwiftUI

struct Video: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}

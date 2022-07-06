//
//  AnimalModel.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 06.07.2022.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

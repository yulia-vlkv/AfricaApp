//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Iuliia Volkova on 07.07.2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}

//
//  PlanetSectionHeader.swift
//  Star Wars Favorites
//
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

// Re-usable header section for the PlanetDetail() view
struct PlanetSectionHeader: View {
    
    var iconName: String
    var titleName: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: iconName).font(.largeTitle)
            Text(titleName).font(.largeTitle).bold()
        }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
    }
}

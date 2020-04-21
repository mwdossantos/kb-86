//
//  Row.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 22/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct Row: View {
    var body: some View {
        VStack {
            VStack (alignment: .leading){
                HStack {
                    Image("rey")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    Spacer()
                    Image("kylo-ren")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                }
            }
        }.padding()
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row()
    }
}

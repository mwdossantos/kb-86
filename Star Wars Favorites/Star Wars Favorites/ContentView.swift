//
//  ContentView.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 21/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Row()
                Row()
                Row()
                Row()
                Row()
            }
            .navigationBarTitle(Text("Star Wars Favorites"))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

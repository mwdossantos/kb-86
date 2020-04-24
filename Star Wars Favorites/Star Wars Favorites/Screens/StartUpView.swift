//
//  StartUpView.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct StartUpView: View {
    @State private var hasTimeElapsed = false
    
    @ViewBuilder
    var body: some View {
        
        if hasTimeElapsed {
            ContentView(showModal: true)
        } else {
            Splashscreen()
        }
    }
    
    
    private func delayText() {
        // Delay of 3 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.hasTimeElapsed = true
        }
    }
}

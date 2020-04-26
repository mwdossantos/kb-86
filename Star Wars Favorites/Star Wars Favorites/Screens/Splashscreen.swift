//
//  Splashscreen.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct Splashscreen: View {

    @State private var hasTimeElapsed = false

    var body: some View {
        Group {
            if self.hasTimeElapsed {
                // Transition to OnboardingView()
                OnboardingView()
            } else {
                
                // Show the animated GIF with the Star Wars logo
                
                ZStack (alignment: .center) {
                    
                    // Gif
                    AnimatedImage(name: "hyperspace.gif")
                    .scaledToFill().aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 90, alignment: .bottom)
                    
                    // Logo
                    Image("star-wars-logo-white")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120, alignment: .center)
                        .padding(.top, 70)

                    }.edgesIgnoringSafeArea(.all).onAppear(perform: mockLoading)
            }
        }
    }
    
    private func mockLoading() {

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
            self.hasTimeElapsed = true
        }

    }
}

struct Splashscreen_Previews: PreviewProvider {
    static var previews: some View {
        Splashscreen()
    }
}

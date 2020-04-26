//
//  OnboardingView.swift
//  Star Wars Favorites
//
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    
    // storing the system wide colorscheme
    @Environment (\.colorScheme) var colorScheme:ColorScheme
    
    // setting the state for the showingSheet variable
    @State var showingSheet = true
    
    var body: some View {
        NavigationView {
            VStack {
                Image("star-wars-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .padding(.bottom, 70)
                
                ZStack (alignment: .bottom) {
                    Image("jedi")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 600)
                    
                    VStack {
                        Button(action: {}) {
                            // setting the action of the button to load the PlanetsView once pressed
                            NavigationLink(destination: PlanetsView()) {
                                Text(colorScheme == .light ? "Become a Jedi" : "Turn to the Dark Side")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color("standardColors"))
                                    .cornerRadius(13)
                            }
                            
                        }.padding(.horizontal, 40)
                    }.padding(.bottom, 120)
                }
                
            }.edgesIgnoringSafeArea(.bottom).sheet(isPresented: $showingSheet) {
                ModalView()
            }
        }
    }
}



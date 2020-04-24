//
//  ContentView.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 21/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment (\.colorScheme) var colorScheme:ColorScheme
    @State var showingSheet = true
    @State var clickedNavBtn = false
    
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
                            Button(action: {
                                withAnimation {
                                    self.clickedNavBtn = true
                                }
                            }) {
                                if colorScheme == .light {
                                    NavigationLink(destination: PlanetsView()) {
                                        Text("Become a Jedi")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .padding()
                                            .foregroundColor(.white)
                                            .background(Color("standardColors"))
                                            .cornerRadius(13)
                                    }

                                } else {
                                    NavigationLink(destination: PlanetsView()) {
                                        Text("Turn to the Dark Side")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .padding()
                                            .foregroundColor(.white)
                                            .background(Color("standardColors"))
                                            .cornerRadius(13)
                                    }
                                }
                                
                            }.padding(.horizontal, 40)
                        }.padding(.bottom, 120)
                    }
                    
                }.edgesIgnoringSafeArea(.bottom).sheet(isPresented: $showingSheet) {
                    IntroductionInfoView()
                }
        }
    }
    
    func showSheet () {
        self.showingSheet = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



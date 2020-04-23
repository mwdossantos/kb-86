//
//  ContentView.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 21/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        VStack {
            Spacer()
                .frame(height: 34.0)
            
            Image("star-wars-logo")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
            
            Spacer()
            
            ZStack (alignment: .bottom) {
                Image("jedi")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 600)
                
                VStack {
                    Spacer()
                    Button(action: {
                        print("Delete tapped!")
                    }) {
                        Text("Continue")
                            .font(.body)
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(.standardColors))
                            .cornerRadius(10)
                    }.padding(.horizontal, 20)
                    Spacer()
                        .frame(height: 34.0)
                }
            }
            
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



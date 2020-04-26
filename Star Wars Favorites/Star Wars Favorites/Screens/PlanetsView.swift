//
//  PlanetsView.swift
//  Star Wars Favorites
//
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct PlanetsView: View {
    
    // store all the planets in a variable called planets
    @State var planets: [Planet] = PlanetService.GetPlanets()
    @State var showingDetailSheet = false
    @State var planetToShowInDetail: Planet?

    // change color of navigation bar tint with the default colors
    init() {
        _ = UINavigationBarAppearance()
        
        UINavigationBar.appearance().tintColor = UIColor(named: "standardColors")
    }
    
    var body: some View {
        ScrollView {
            // looping through all planets in the array
            ForEach(0..<self.planets.count) { i in
                    
                // creating a VStack for every planet, filled with its information
                VStack {
                    Image(self.planets[i].meta.planetImage!)
                    .resizable()
                        .frame(width: 180, height: 180)
                    Text(self.planets[i].meta.name!).font(.largeTitle).bold()
                    Text(self.planets[i].meta.description!)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding([.top, .leading, .trailing], 20)
                        
                    Button(action: {
                        // set the action of the button to open PlanetDetail()
                        self.planetToShowInDetail = self.planets[i]
                        self.showingDetailSheet = true;
                    }) {
                        Text("Visit this planet").foregroundColor(Color("standardColors")).padding(.top)
                    }


                }.padding(.top, 60)
            }
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
        .navigationBarItems(trailing:
                    Image("star-wars-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .padding(.trailing, UIScreen.main.bounds.width / 2 - 40)
                        .padding(.top, -10)
        )
        .sheet(isPresented: self.$showingDetailSheet) {
            PlanetDetail(planet: self.planetToShowInDetail!)
        }
    }

}

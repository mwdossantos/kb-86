//
//  PlanetsView.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct PlanetsView: View {
    
    @State var planets: [Planet] = PlanetService.GetPlanets()
    
    // change color of navigation bar tint with the default colors
    init() {
        _ = UINavigationBarAppearance()
        
        UINavigationBar.appearance().tintColor = UIColor(named: "standardColors")
    }
    
    
    var body: some View {
        ScrollView {
            ForEach(0..<self.planets.count) { i in
                    
                VStack {
                    Image(self.planets[i].meta.planetImage!)
                    .resizable()
                        .frame(width: 140, height: 140)
                    Text(self.planets[i].meta.name!).font(.largeTitle).bold()
                    Text(self.planets[i].meta.description!)
                        .foregroundColor(.gray).padding(.top, 10)
                    NavigationLink(destination: PlanetDetail()) {
                        Text("Visit this planet").foregroundColor(Color("standardColors")).padding(.top)
                    }
                }.padding(.top, 40)
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
    }

}

struct PlanetsView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetsView()
    }
}

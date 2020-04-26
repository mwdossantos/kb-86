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
    @State var showingDetailSheet = false
    @State var planetToShowInDetail: Planet?

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
                        .frame(width: 180, height: 180)
                    Text(self.planets[i].meta.name!).font(.largeTitle).bold()
                    Text(self.planets[i].meta.description!)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding([.top, .leading, .trailing], 20)
                        
                    Button(action: {
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

struct PlanetsView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetsView()
    }
}

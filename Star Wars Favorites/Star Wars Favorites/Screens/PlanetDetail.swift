//
//  PlanetDetail.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct PlanetDetail: View {
    var planet: Planet;
    
    
    var body: some View {
        ScrollView {
            VStack {
                Image(self.planet.meta.planetImage!)
                .resizable()
                    .frame(width: 220, height: 220)
                    .padding(.top, 40)
                Text(self.planet.meta.name!).font(.largeTitle).bold()
                Text(self.planet.meta.description!)
                    .foregroundColor(.gray).padding(.top, 10).padding(20)
                
                VStack {
                    ForEach(0..<self.planet.meta.additionalImages!.count) { i in
                        Image(self.planet.meta.additionalImages![i])
                            .resizable()
                        .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width)
                            .aspectRatio(contentMode: .fit)
                            .listRowInsets(.none)
                    }
                }.padding(.bottom, 40)
                
                // Stuff that has to align left in here
                VStack(alignment: .leading) {
                    
                    // Astrographical
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "hurricane").font(.largeTitle)
                        Text("Astrographical").font(.largeTitle).bold()
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("REGION").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.astrographical.region!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("SECTOR").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.astrographical.sector!).foregroundColor(.gray)
                        }
                        VStack(alignment: .leading) {
                            Text("SYSTEM").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.astrographical.system!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("MOONS").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(String(self.planet.astrographical.moons!)).foregroundColor(.gray)
                        }
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 30)
                    // Astrographical end
                    
                    // Physical
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "perspective").font(.largeTitle)
                        Text("Physical").font(.largeTitle).bold()
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("PLANET CLASS").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.physical.planetClass!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("DIAMETER").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.physical.diameter!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("POINTS OF INTEREST").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            VStack(alignment: .leading, spacing: 5) {
                                 ForEach(0..<self.planet.physical.poi!.count) { i in
                                     Text(String(self.planet.physical.poi![i])).foregroundColor(.gray)
                                 }
                             }.padding(.bottom, 10)
                            
                            Text("FAUNA").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.physical.fauna!).foregroundColor(.gray)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("ATMOSPHERE").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.physical.atmosphere!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("TERRAIN").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            VStack(alignment: .leading, spacing: 5) {
                                ForEach(0..<self.planet.physical.terrain!.count) { i in
                                    Text(String(self.planet.physical.terrain![i])).foregroundColor(.gray)
                                }
                            }
                        }.padding(.leading, 20)
                        
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 30)
                    // End physical
                    
                    // Societal
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "leaf.arrow.circlepath").font(.largeTitle)
                        Text("Societal").font(.largeTitle).bold()
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("NATIVE SPECIES").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.societal.nativeSpecies!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("IMMIGRATED SPECIES").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.societal.immigratedSpecies!).foregroundColor(.gray).padding(.bottom, 10)
                            
                            Text("POPULATION").font(.footnote).fontWeight(.semibold).padding(.bottom, 5)
                            Text(self.planet.societal.population!).foregroundColor(.gray)
                        }
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 30)
                    // End societal
                    
                    
                    // Historic events
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "wand.and.stars").font(.largeTitle)
                        Text("Historic Events").font(.largeTitle).bold()
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading, spacing: 20) {
                            ForEach(0..<self.planet.meta.historicEvents!.count) { i in
                                Text(String(self.planet.meta.historicEvents![i].title!)).fontWeight(.semibold).font(.title)
                                Text(String(self.planet.meta.historicEvents![i].description!)).fontWeight(.regular).foregroundColor(.gray)
                            }
                        }
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 30)
                    // End historic events
                    
                    
                    // Appearances
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "wand.and.stars").font(.largeTitle)
                        Text("Appearances").font(.largeTitle).bold()
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            ForEach(0..<self.planet.meta.appearances!.count) { i in
                                Text(String(self.planet.meta.appearances![i])).fontWeight(.semibold).italic().foregroundColor(.gray)
                            }
                        }
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 30)
                }

            }
        }
    }
}

//struct PlanetDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetDetail(planet: <#Planet#>)
//    }
//}

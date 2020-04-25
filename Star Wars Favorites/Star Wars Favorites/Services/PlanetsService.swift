//
//  PlanetsService.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import Foundation

struct HistoricEvents: Codable {
    let title:String?
    let description:String?
}

struct Meta: Codable {
    let name:String?
    let planetImage:String?
    let additionalImages:[String]?
    let description:String?
    let historicEvents:[HistoricEvents]?
    let appearances:[String]?
}

struct Astrographical: Codable {
    let region:String?
    let sector:String?
    let system:String?
    let moons:Int8?
}

struct Physical: Codable {
    let planetClass:String?
    let diameter:String?
    let atmosphere:String?
    let terrain:[String]?
    let poi:[String]?
    let fauna:String?
}

struct Societal: Codable {
    let nativeSpecies:String?
    let immigratedSpecies:String?
    let population:String?
}

struct Planet: Codable {
    let meta:Meta
    let astrographical:Astrographical
    let physical:Physical
    let societal:Societal
}

public class PlanetService {
    static func GetPlanets() -> [Planet] {
        do {
            let url = Bundle.main.url(forResource: "planets", withExtension: "json")!
            let data = try Data(contentsOf: url, options: .mappedIfSafe)
            let planets = try JSONDecoder().decode([Planet].self, from: data)
            
            return planets
        } catch {
            print("Error info: \(error)")
            return []
        }
    }
}

import UIKit
import SwiftUI
import PlaygroundSupport

let planetsJSON = """
[
    {
        "meta": {
            "name": "Lah'Mu",
            "planetImage": "crait.png",
            "additionalImages": [
                "url",
                "url",
                "url"
            ],
            "description": "This is a decription",
            "historicEvents": [
                {
                    "title": "Origin",
                    "description": "Lah'mu was named from a Neimoidian word meaning 'prosperity' Early in its geographic life, Lah'mu's crust split numerous times, bringing minerals and soils to the surface that would later be farmed by the planet's sparse settlers. Initially hosting several moons, Lah'mu gained a planetary ring after one ancient satellite was pulverized, its remaining material pulled into orbit to form silica rings that cast shadows across the planet's surface. Volcanoes ejected tephra during this formative period, contaminating Lah'mu's natural greenery, forcing later settlers to carefully sift the soil."
                },
                {
                    "title": "The Erso's",
                    "description": "As of 13 BBY, Lah'mu hosted fewer than five hundred settlers, occupying farmlands on the western hemisphere. Many of these individuals arrived on Lah'mu seeking to avoid war; among them were the Erso family, whose association with Orson Krennic during the Clone Wars forced them into hiding on the remote, inaccessible world. Galen and Lyra Erso chose to reside in a sixty-five hectare homestead on the planet's less popular eastern side, purchased with the assistance of Saw Gerrera. The Ersos grew crops and utilized Pretormin Environmental GX-8 water vaporators to distill water vapor from the air. Unfortunately for the family, Director Krennic ultimately tracked them down, and arrived on Lah'mu to take Galen, Lyra, and their young daughter Jyn, with him to ensure the completion of his stalled Death Star project. Galen refused, and a brief firefight erupted in which Krennic was dealt a glancing blow and Lyra was shot dead. Krennic's death troopers burned the homestead and took Galen into custody, while Jyn fled to the black gulch beyond the former homestead's edge. There, she secreted herself in a shelter beneath a hidden hatch camouflaged by an artificial rock. She was later rescued by Gerrera."
                }
            ],
            "appearances": [
                "Rogue One: A Star Wars Story"
            ]
        },
        "astrographical": {
            "region": "Outer Rim Territories",
            "sector": "Raioballo sector",
            "system": "Lah'Mu system",
            "moons": 1
        },
        "physical": {
            "planetClass": "Terrestial",
            "diameter": "12,618 km",
            "atmosphere": "Breathable",
            "terrain": [
                "Black sand and beaches",
                "Fertile lowlands",
                "Plateaus & mountains"
            ],
            "poi": [
                "Chief's fortress",
                "The Erso homestead"
            ],
            "fauna": "None"
        },
        "societal": {
            "nativeSpecies": "none",
            "immigratedSpecies": "Humans",
            "population": "Estimated: less than 500"
        }
    },
{
    "meta": {
        "name": "Hoth",
        "planetImage": "crait.png",
        "additionalImages": [
            "url",
            "url",
            "url"
        ],
        "description": "This is a decription",
        "historicEvents": [
            {
                "title": "Origin",
                "description": "Lah'mu was named from a Neimoidian word meaning 'prosperity' Early in its geographic life, Lah'mu's crust split numerous times, bringing minerals and soils to the surface that would later be farmed by the planet's sparse settlers. Initially hosting several moons, Lah'mu gained a planetary ring after one ancient satellite was pulverized, its remaining material pulled into orbit to form silica rings that cast shadows across the planet's surface. Volcanoes ejected tephra during this formative period, contaminating Lah'mu's natural greenery, forcing later settlers to carefully sift the soil."
            },
            {
                "title": "The Erso's",
                "description": "As of 13 BBY, Lah'mu hosted fewer than five hundred settlers, occupying farmlands on the western hemisphere. Many of these individuals arrived on Lah'mu seeking to avoid war; among them were the Erso family, whose association with Orson Krennic during the Clone Wars forced them into hiding on the remote, inaccessible world. Galen and Lyra Erso chose to reside in a sixty-five hectare homestead on the planet's less popular eastern side, purchased with the assistance of Saw Gerrera. The Ersos grew crops and utilized Pretormin Environmental GX-8 water vaporators to distill water vapor from the air. Unfortunately for the family, Director Krennic ultimately tracked them down, and arrived on Lah'mu to take Galen, Lyra, and their young daughter Jyn, with him to ensure the completion of his stalled Death Star project. Galen refused, and a brief firefight erupted in which Krennic was dealt a glancing blow and Lyra was shot dead. Krennic's death troopers burned the homestead and took Galen into custody, while Jyn fled to the black gulch beyond the former homestead's edge. There, she secreted herself in a shelter beneath a hidden hatch camouflaged by an artificial rock. She was later rescued by Gerrera."
            }
        ],
        "appearances": [
            "Rogue One: A Star Wars Story"
        ]
    },
    "astrographical": {
        "region": "Outer Rim Territories",
        "sector": "Raioballo sector",
        "system": "Lah'Mu system",
        "moons": 1
    },
    "physical": {
        "planetClass": "Terrestial",
        "diameter": "12,618 km",
        "atmosphere": "Breathable",
        "terrain": [
            "Black sand and beaches",
            "Fertile lowlands",
            "Plateaus & mountains"
        ],
        "poi": [
            "Chief's fortress",
            "The Erso homestead"
        ],
        "fauna": "None"
    },
    "societal": {
        "nativeSpecies": "none",
        "immigratedSpecies": "Humans",
        "population": "Estimated: less than 500"
    }
}
]
"""


struct HistoricEvents: Codable {
    let name:String?
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
    let meta:Meta?
    let astrographical:Astrographical?
    let physical:Physical?
    let societal:Societal?
}

public class PlanetRetrievalService {

    static func GetPlanets() -> [Planet] {
        do {
            let jsonData = planetsJSON.data(using: .utf8)!
            let planets = try JSONDecoder().decode([Planet].self, from: jsonData)
            
            for planet in planets {
                print(planet.meta?.name != nil ? planet.meta!.name! : "No name found")
            }
            
            return []
        } catch {
            print("Error info: \(error)")
            return []
        }
    }
}

print(PlanetRetrievalService.GetPlanets())

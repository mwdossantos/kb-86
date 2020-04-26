# Application Development
> Week 9

Again, thank you for taking the time to read this week's update. As you can see in the following table, I have a couple of activities planned that I will do in order to get my desired result: Application Development.

# Activities

| What | Finalized |
| :--- | :---: |
| Creating planet list view |✅|
| Creating planet detail view |✅|
| Loading & viewing JSON |✅|

## Creating planet list view

Last week I discussed my process for the onboarding view and Sith & Jedi modes. This week was all about creating the planet list, a detail view for a planet and filling those views with information from the `.JSON` file.

After clicking the button in the `OnboardingView()`, you will transition to the list view that contains all the planets. The code for this view can be seen here:

```swift
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
```

As you can see, I created a VStack that holds all the information for the planet that I want to display. The `VStack` is encapsulated in a `ScrollView` because there will be quite a few. This way you can easily scroll to the last planet in my collection.

The most important part here is that I used a `ForEach` loop that goes through the list of planets and returns a `VStack` for each of them, with the appropiate styling. Each planet also gets a button that will open an modal sheet with the current planet, and fill that modal with information from the `.JSON`.

I will show you how I got my data from the `.JSON` later on in this week's documentation.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/scrollingthroughplanets.gif)

## Creating planet detail view

Because having just a list of planets is a bit boring, I also created a detail view for each planet that gives you a lot more information about said planet. Just like the `ModalView()` that gets presented ontop of the `OnboardingView()` I did the same with the `PlanetDetail()` view.

When the user presses this button:

```swift
Button(action: {
    self.planetToShowInDetail = self.planets[i]
    self.showingDetailSheet = true;
}) {
    Text("Visit this planet").foregroundColor(Color("standardColors")).padding(.top)
}
```

it will set the state for showing the detail modal sheet to true and it will present itself:

```swift
.sheet(isPresented: self.$showingDetailSheet) {
    PlanetDetail(planet: self.planetToShowInDetail!)
}
```

As you can see it populates `PlanetDetail()` with the `self` planet. This ensures it uses the correct planet (the one you pressed the button of).

Once finished it looks like this, I'm very happy with the result:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/openingplanetdetailview.gif)

## Loading & viewing JSON

Now, you may think, how did all that data get there in the first place? That's a good question and I will walk you through the process now. First, let's take a look at my data model that I defined in Week 7:

```json
{
    "meta": {
      "name": "Lah'Mu",
      "planetImage": "lahmu",
      "additionalImages": [
        "lahmu1",
        "lahmu2",
        "lahmu3"
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
```

In order to be able to use any of this data I had to use some of Swift's native functions. I followed a tutorial online that teached me how to decode `.JSON` and be able to use the data from that `.JSON` in my application. In the `PlanetsService.swift` file I did basically two things:

* Create structs that are `Codable`. This means I create variables for each item in the `.JSON` and specify of what type they are. 
* Create a class with a static function that I can call in order to retrieve the planets.

For the structs, my code was fairly simple:

```swift
struct Meta: Codable {
    let name:String?
    let planetImage:String?
    let additionalImages:[String]?
    let description:String?
    let historicEvents:[HistoricEvents]?
    let appearances:[String]?
}
```

I won't paste all of the structs here as there are quite a few, but as you can see I was able to define the types for each key in the `.JSON` file, even arrays.

Now for the class I created to actually retrieve the planets:

```swift
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
```

I made the `GetPlanets()` static function so it is callable from anywhere without having to create a new `PlanetService()` object. As you can see in the `PlanetsView.swift` file:

```swift
@State var planets: [Planet] = PlanetService.GetPlanets()
```

I stored the information I got from the `PlanetService.GetPlanets()` function in a `@State` variable called `planets` which I used to fill in the information for each planet in SwiftUI later on in the file:

```swift
Text(self.planets[i].meta.description!)
```

Also, remember when I told you about the button that opens the detail view for a planet? It also uses the `planets` variable to get the information about the respective planet:

```swift
Button(action: {
    self.planetToShowInDetail = self.planets[i]
}
```

I am very happy with the result of this weeks work, as the application is now feeling more alive then ever. All I have left to do is to refactor the code and do some other small activities in Week 10, [Finish Development & Presentation](https://github.com/mwdossantos/kb-86/blob/master/docs/week-10-finish-development-and-presentation.md).

# Resources

| Resource | Note |
| :--- | :--- |
| [Apple develop website](https://developer.apple.com/develop/) | Used to find tutorials and look up documentation when programming |
|[JSON Tutorial](https://www.youtube.com/watch?v=YY3bTxgxWss)|Used to learn more about decoding JSON|


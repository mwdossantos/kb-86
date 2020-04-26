# Finish Development & Presentation
> Week 10

Again, thank you for taking the time to read this week's update. As you can see in the following table, I have a couple of activities planned that I will do in order to get my desired result: Finish Development & Presentation.

# Activities

|What|Finalized|
|:---|:---:|
|Refactoring the code|✅|
|Final run|✅|
|Presentation of the Deliverable|✅|

## Refactoring the code

As with any coding project the end is a good place to start looking back at your code, and polish it where needed. A lot of times I noticed that I have duplicate code, which I could have handled more efficiently. A couple of refactoring examples are:

```swift
// Old version of the button on the OnboardingView()

Button(action: {}) {
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
```

```swift
// New version of the button on the OnboardingView()

Button(action: {}) {
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
```

Here, I used a shorthand `if else` statement to change the text of the button based on the system color scheme, instead of creating duplicates.

For the next piece of code I refactored I focused on the largest file of the project, the `PlanetDetail()` view.

```swift
// Old, repeated code for each header item in the PlanetDetail() view

HStack(alignment: .firstTextBaseline) {
    Image(systemName: "hurricane").font(.largeTitle)
    Text("Astrographical").font(.largeTitle).bold()
}.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
```

As you can see, repeating this piece of code several times in the `PlanetDetail()` view would be bad practice. If I make one change I have to change it everywhere. That's why I decided to put it into a component, called `PlanetSectionHeader`:

```swift

// New, component code for a header item in the PlanetDetail() view

import SwiftUI

struct PlanetSectionHeader: View {
    var iconName: String
    var titleName: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: iconName).font(.largeTitle)
            Text(titleName).font(.largeTitle).bold()
        }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 10)
    }
}
```

Now in the `PlanetDetail()`, all I have to do in order to render the header section is to call `PlanetSectionHeader()` and give two arguments for the `iconName` and `titleName`:

```swift
// Calling for a PlanetSectionHeader with two arguments

PlanetSectionHeader(iconName: "hurricane", titleName: "Astrograpical")
```

The rest of the `PlanetDetail()` view was harder to refactor, as it contained a lot of logic that I didn't know how to pass through the component.

Next to refactoring my code I have added comments in my `.swift` files, to help you understand the code in the project. I am happy I took a last look at my code, as it's now even shorter than before, and easier to manage.

## Final run

After I finished creating the application I had a few small things left to do. The application icon I designed in Week 7 was not yet implemented, so I added it:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/appicon.png)

Also, the display name of the app was the same as the project, namely "Star Wars Favorites". This was way to long and on the device it looked weird. That's why I changed the *product* name to "SW: Favorites". A lot better :)

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/appname.png)

## Presentation of the Deliverable

To finish this section of the minor I decided to take out my camera and take a few high quality pictures of the application running on my phone:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/swpromo1.jpeg)

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/swpromo2.jpeg)

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/swpromo3.jpeg)

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/swpromo4.jpeg)

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/swpromo5.jpeg)

And there we have it! The application is done and I fulfilled my learning goal:

> Get the hang of Swift and the SwiftUI framework.

The deliverable for this section of the minor:

> An iOS/macOS application that works on both iPhone and iPad - a responsive design.

has also been created and I can't be happier with the end result!

---

Looking back at the past few weeks I have to say, I've learnt so much. I learnt that SwiftUI can be a breeze, but can also be a curse at sometimes, given the many XCode errors I have encountered without any clear reason. I also found that using a subject such as Star Wars was beneficial to the progression of my project as I managed to keep myself motivated during these 5 weeks.

Even though we went into a semi-lockdown halfway of March, I must say that the weekly check-ups with my tutors were very helpful to give an insight into my process and see that I was heading into the right direction.

Again, I want to thank you for taking the time to read my documentation. You can clone this repository and run the application by yourself and see what wonderful planets reside in the Star Wars Universe 🪐

Best regards,

Matthew

# Resources

| Resource | Note |
| :--- | :--- |
| [Apple develop website](https://developer.apple.com/develop/) | Used to find tutorials and look up documentation when programming |


# Week 8 - Follow Swift Tutorials & Development

## Follow Swift Tutorials & Development

Again, thank you for taking the time to read this week's update. As you can see in the following table, I have a couple of activities planned that I will do in order to get my desired result: Follow Swift Tutorials & Development.

## Activities

| What | Finalized |
| :--- | :---: |
| Swift & SwiftUI tutorial | ✅ |
| Setting up the XCode project | 🧑🏻‍💻 |
| Create launch screen with GIF | 🧑🏻‍💻 |
| Dark & Light mode | 🧑🏻‍💻 |
| Onboarding with Sith & Jedi | 🧑🏻‍💻 |

### Swift & SwiftUI tutorial

[All tutorials](https://developer.apple.com/tutorials/swiftui/tutorials)

On the Apple developer website there are a lot of tutorials you can follow that will teach you the basics of Swift and SwiftUI. I decided to follow the first three so that I will have a proper understanding of the development environment and Swift & SwiftUI before starting to build my own application.

For the sake of documentation I will only list the pain points per section I encounter and summarize what I learned from each tutorial, from my point of view. Of course, I will also present you the end result of each tutorial.

#### [Creating and Combining Views](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views) ~ 40 minutes

I will build a sample application, called Landmarks. The learning curve for this tutorial is about creating views and combining them in order to create rich applications.

**Section 1 - Create a New Project and Explore the Canvas**

In the first section of this tutorial I created the XCode project and turned on the SwiftUI preview pane. This helps me see my code in a visual way.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-1-section-1.png)

**Section 2 - Customize the Text View**

Here I learned that I can manipulate the modifiers for elements through either code or the visual inspector in the preview pane.

As you can see I set the text color to green.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-1-section-2.png)

**Section 3 - Combine Views Using Stacks**

In this section I learned what VStack and HStack containers are. They basically behave like `<div>`'s in HTML combined with CSS positioning.

They give me a lot of control of the layout of certain elements. I really like this part as it makes a lot of sense. I added more information to the Turtle Rock text I had in section 2.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-1-section-3.png)

**Section 4 Create a Custom Image View**

In this section I learned how to create an image view. You see, in SwiftUI everything is a view. It's good practice to define the image view in another SwiftUI file, as it will keep the application modular.

I applied some styling to the image view. Also note that this is `CircleImage.swift` and not `ContentView.swift`.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-1-section-4.png)

**Section 5 - Use UIKit and SwiftUI Views Together**

For this application, each landmark also has a map view. In order for this to work we need to import MapKit into the SwiftUI file called `MapView.swift`. The configuration you see in the code first creates the map view, and then sets the coordinates for the correct location.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-1-section-5.png)

**Section 6 - Compose the Detail View**

Now it's time to combine the views I created. As you can see I went back to the original `ContentView.swift` file and called the `MapView()` and `CircleImage()`. I applied a couple of modifiers to them to make them behave as I wanted.

The end result for this first tutorial actually looks really nice:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-1-section-6.png)

#### [Building Lists and Navigation](https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation) ~ 35 minutes

In this next tutorial for the landmarks application I will continue building on what I finished off in the first tutorial. The goal is to have a scrollable list that users can scroll through and use to view details about certain locations.

**Section 1 - Get to Know the Sample Data**

In the first section of this tutorial it showed me where to find the data I will be working with and how it is structured. No coding here.

**Section 2 - Create the Row View**

In this section I started creating a `LandmarkRow.swift` file in which I will define the layout and design of a single row item in the scrollable list that I will be working on later on.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-2-section-2.png)

**Section 3 - Customize the Row Preview**

This section in the tutorial teached my how I can control what the XCode previewer shows me by modifing the `LandmarkRow_Previews: PreviewProvider`.

As you can see I now show the first and second item from the `landmarkData.json` file.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-2-section-3.png)

**Section 4 - Create the List of Landmarks**

This fourth section was rather short. I created a `LandmarkList.swift` file and defined a list in it. Then I populated that list with two `LandmarkRow`'s.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-2-section-4.png)

**Section 5 - Make the List Dynamic**

As you can see in the last section, I hard coded the data. This isn't a good practice as it's prone to mistakes and once you have a lot of data you need to manually update it. That's why in this section I turned the list to something dynamic that lists all the items in the `landmarkData.json`.

One thing I find nifty is that by adding `Identifiable` to the `Landmark.swift` model protocol, it automatically orders the list based on the id's defined in the `.json` file.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-2-section-5.png)

**Section 6 - Set Up Navigation Between List and Detail**

Now that I have created the list & detail views it's time to make them link. I did this by embedding the list in a `NavigationView` and then giving each `LandmarkRow()` a `NavigationLink` with the destination being the `LandmarkDetail()`.

Now the only thing not happening yet is that the navigation action isn't pushing the child data through. I will fix this in section 7 of this tutorial.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-2-section-6.png)

**Section 7 - Pass Data into Child Views**

This part of the tutorial gets a bit more complicated as I need to edit all of the supporting views, such as the image and map views.

The essence of this section is that by removing the hard coded data and replacing it with references to the `Landmark.swift` the data in the child \(detail\) views will be dynamic.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/tutorial-2section-7.gif)

Now that I have finished this second tutorial as well it's time to start with my own project. I have a great feeling about this! When I look back I don't seem to find a lot of things particularly difficult, just very new and suprising.

You can view all of my code for these tutorials in the [Tutorials folder](https://github.com/mwdossantos/kb-86/blob/master/tutorials)

I can't wait to start building Star Wars Favorites.

### Setting up the XCode project

The first thing to do is to start XCode and create a new project. The process for this is fairly simple and straightforward. In essence, my application will use the Single View template that XCode provides.

After the project is set up I went ahead and setup the folder structure as you can see in the following image:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/star-wars-favorites-docs/images/setting-up-the-project-folderstructure.png)

It contains a couple of folders:

* Support Views
* Resources
* Models
* Assets.xcassets

Support views will contain all of my views that I will implement in the application. Things like a planet item in the list, the planet list itself and for example a custom button.

The resources folder holds all of my assets such as the planet images and `.JSON` data for them.

The models folder contains files that hold information about the way I handle data in the application, such as the JSON parser.

The final folder I will address is the `Assets.xcassets` folder. This contains all of the images that don't belong in the resources folder such as the two Jedi's.

### Create launch screen with GIF

* How did I do the GIF? 
* The delay
* The transition to Onboarding

highlight important sections of the code and explaid what it does. paste my code with comments at the end with it running in the simulator \(recorded\)

### Sith & Jedi mode

Done

* How did I implement Dark mode
* How did I define which assets to use?
* How did I define the colors?
* Hwo did I navigate to the planet list view?

highlight important sections of the code and explaid what it does. paste my code with comments at the end with it running in the simulator \(recorded\)

### Onboarding with Sith & Jedi

Done -

highlight important sections of the code and explaid what it does. paste my code with comments at the end with it running in the simulator \(recorded\)

end here and link to next week [https://github.com/mwdossantos/kb-86/blob/master/star-wars-favorites-docs/week-9-application-development.md](https://github.com/mwdossantos/kb-86/blob/master/star-wars-favorites-docs/week-9-application-development.md)

## Resources

| Resource | Note |
| :--- | :--- |
| [Apple develop website](https://developer.apple.com/develop/) | Used to find tutorials and look up documentation when programming |
| [Stack Overflow](https://stackoverflow.com/) | Who doesn't use this website? |

\([https://app.quicktype.io/](https://app.quicktype.io/)\) \([https://medium.com/better-programming/json-parsing-in-swift-2498099b78f](https://medium.com/better-programming/json-parsing-in-swift-2498099b78f)\) \([https://www.youtube.com/watch?v=EvwSB80GGDA](https://www.youtube.com/watch?v=EvwSB80GGDA)\) \([https://www.youtube.com/watch?v=YY3bTxgxWss](https://www.youtube.com/watch?v=YY3bTxgxWss)\) \([https://www.youtube.com/channel/UCuP2vJ6kRutQBfRmdcI92mA](https://www.youtube.com/channel/UCuP2vJ6kRutQBfRmdcI92mA)\)


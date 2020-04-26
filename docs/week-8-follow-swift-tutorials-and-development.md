# Week 8

## Follow Swift Tutorials & Development

Again, thank you for taking the time to read this week's update. As you can see in the following table, I have a couple of activities planned that I will do in order to get my desired result: Follow Swift Tutorials & Development.

## Activities

| What | Finalized |
| :--- | :---: |
| Swift & SwiftUI tutorial |✅|
| Setting up the XCode project |✅|
| Create splash screen with GIF |✅|
| Dark & Light mode |✅|
| Onboarding with Sith & Jedi |✅|

### Swift & SwiftUI tutorial

[All tutorials](https://developer.apple.com/tutorials/swiftui/tutorials)

On the Apple developer website there are a lot of tutorials you can follow that will teach you the basics of Swift and SwiftUI. I decided to follow the first three so that I will have a proper understanding of the development environment and Swift & SwiftUI before starting to build my own application.

For the sake of documentation I will only list the pain points per section I encounter and summarize what I learned from each tutorial, from my point of view. Of course, I will also present you the end result of each tutorial.

#### [Creating and Combining Views](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views) ~ 40 minutes

I will build a sample application, called Landmarks. The learning curve for this tutorial is about creating views and combining them in order to create rich applications.

**Section 1 - Create a New Project and Explore the Canvas**

In the first section of this tutorial I created the XCode project and turned on the SwiftUI preview pane. This helps me see my code in a visual way.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-1-section-1.png)

**Section 2 - Customize the Text View**

Here I learned that I can manipulate the modifiers for elements through either code or the visual inspector in the preview pane.

As you can see I set the text color to green.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-1-section-2.png)

**Section 3 - Combine Views Using Stacks**

In this section I learned what VStack and HStack containers are. They basically behave like `<div>`'s in HTML combined with CSS positioning.

They give me a lot of control of the layout of certain elements. I really like this part as it makes a lot of sense. I added more information to the Turtle Rock text I had in section 2.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-1-section-3.png)

**Section 4 Create a Custom Image View**

In this section I learned how to create an image view. You see, in SwiftUI everything is a view. It's good practice to define the image view in another SwiftUI file, as it will keep the application modular.

I applied some styling to the image view. Also note that this is `CircleImage.swift` and not `ContentView.swift`.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-1-section-4.png)

**Section 5 - Use UIKit and SwiftUI Views Together**

For this application, each landmark also has a map view. In order for this to work we need to import MapKit into the SwiftUI file called `MapView.swift`. The configuration you see in the code first creates the map view, and then sets the coordinates for the correct location.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-1-section-5.png)

**Section 6 - Compose the Detail View**

Now it's time to combine the views I created. As you can see I went back to the original `ContentView.swift` file and called the `MapView()` and `CircleImage()`. I applied a couple of modifiers to them to make them behave as I wanted.

The end result for this first tutorial actually looks really nice:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-1-section-6.png)

#### [Building Lists and Navigation](https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation) ~ 35 minutes

In this next tutorial for the landmarks application I will continue building on what I finished off in the first tutorial. The goal is to have a scrollable list that users can scroll through and use to view details about certain locations.

**Section 1 - Get to Know the Sample Data**

In the first section of this tutorial it showed me where to find the data I will be working with and how it is structured. No coding here.

**Section 2 - Create the Row View**

In this section I started creating a `LandmarkRow.swift` file in which I will define the layout and design of a single row item in the scrollable list that I will be working on later on.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-2-section-2.png)

**Section 3 - Customize the Row Preview**

This section in the tutorial teached my how I can control what the XCode previewer shows me by modifing the `LandmarkRow_Previews: PreviewProvider`.

As you can see I now show the first and second item from the `landmarkData.json` file.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-2-section-3.png)

**Section 4 - Create the List of Landmarks**

This fourth section was rather short. I created a `LandmarkList.swift` file and defined a list in it. Then I populated that list with two `LandmarkRow`'s.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-2-section-4.png)

**Section 5 - Make the List Dynamic**

As you can see in the last section, I hard coded the data. This isn't a good practice as it's prone to mistakes and once you have a lot of data you need to manually update it. That's why in this section I turned the list to something dynamic that lists all the items in the `landmarkData.json`.

One thing I find nifty is that by adding `Identifiable` to the `Landmark.swift` model protocol, it automatically orders the list based on the id's defined in the `.json` file.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-2-section-5.png)

**Section 6 - Set Up Navigation Between List and Detail**

Now that I have created the list & detail views it's time to make them link. I did this by embedding the list in a `NavigationView` and then giving each `LandmarkRow()` a `NavigationLink` with the destination being the `LandmarkDetail()`.

Now the only thing not happening yet is that the navigation action isn't pushing the child data through. I will fix this in section 7 of this tutorial.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-2-section-6.png)

**Section 7 - Pass Data into Child Views**

This part of the tutorial gets a bit more complicated as I need to edit all of the supporting views, such as the image and map views.

The essence of this section is that by removing the hard coded data and replacing it with references to the `Landmark.swift` the data in the child \(detail\) views will be dynamic.

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/tutorial-2section-7.gif)

Now that I have finished this second tutorial as well it's time to start with my own project. I have a great feeling about this! When I look back I don't seem to find a lot of things particularly difficult, just very new and suprising.

You can view all of my code for these tutorials in the [Tutorials folder](https://github.com/mwdossantos/kb-86/blob/master/tutorials)

I can't wait to start building Star Wars Favorites.

### Setting up the XCode project

The first thing to do is to start XCode and create a new project. The process for this is fairly simple and straightforward. In essence, my application will use the Single View template that XCode provides.

After the project is set up I went ahead and setup the folder structure as you can see in the following image:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/setting-up-the-project-folderstructure.png)

It contains a couple of folders:

* Services
* Screens
* Resources
* Assets.xcassets

Services folder contains files that hold information about the way I handle data in the application, such as the JSON parser.

Screens will contain all of my views that I will implement in the application. Things like a planet item in the list, the planet list itself and for example a custom button.

The resources folder holds all of my assets such as the planet images and `.JSON` data for them.

The final folder I will address is the `Assets.xcassets` folder. This contains all of the images that don't belong in the resources folder such as the two Jedi's.

### Create splash screen with GIF

The first screen as seen in my design is the splash screen. This screen is used to show the user there is activity going on and will indicate the application is loading. Normally, animated GIF images are not natively supported in Swift & SwiftUI. After some googling I found a library that I can install as a dependency in my project. This library extends on the normal `Image` component in Swift and gives a full stack solution for animated images. You can read more about this library on its [GitHub page](https://github.com/SDWebImage/SDWebImageSwiftUI).

Here's my piece of code that holds the animated GIF as a background with the Star Wars logo stacked ontop of it:

```swift
ZStack (alignment: .center) {
                    
    // Gif
    AnimatedImage(name: "hyperspace.gif")
    .scaledToFill()
    .aspectRatio(contentMode: .fill)
    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 90, alignment: .bottom)
                    
    // Logo
    Image("star-wars-logo-white")
        .resizable()
        .scaledToFit()
        .frame(height: 120, alignment: .center)
        .padding(.top, 70)

    }.edgesIgnoringSafeArea(.all).onAppear(perform: mockLoading)
```

Now that I have the GIF working, it was time to setup the transition from this view, `Splashscreen.swift`, to the `OnboardingView.swift`. Because I am using a GIF I want to start the transition after one playback of the GIF.

Before transitioning to the onboarding view I specified that I wanted to do so after one full playback of the GIF. I first declared a variable state and wrote this function:

```swift
@State private var hasTimeElapsed = false

private func mockLoading() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
        self.hasTimeElapsed = true
    }
}
```

You can see that I created a `mockLoading()` function that asynchronously runs when the splashscreen appears, in `.onAppear` and then defines 2.3 seconds to be passed in time before setting the variable `hasTimeElapsed` to `true`. Then for the view itself I used an `if` statement to check `hasTimeElapsed`'s state. If `true` I will transition to the `OnboardingView()`. If false, it would show the splashscreen:

```swift
if self.hasTimeElapsed {
    // Transition to OnboardingView()
    OnboardingView()
} else {
    // Show the animated GIF with the Star Wars logo
}
```

Now that I have finished this part of my application and the transition to the `OnboardingView()` works as expected it's time to go to the next section. Check out the GIF below to see the behavior:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/splashscreen.gif)

### Onboarding with Sith & Jedi

When entering the `OnboardingView()`, you are greeted with a popup modal that gives you basic information about the application. In order to show this model in the `OnboardingView()` I had to create another view, called `ModalView()`. This view contains all of the SwiftUI code that makes up the popup modal:

```swift
VStack (alignment: .center) {

    Spacer()
    
    //Title
    Text("Welcome to favorites")
        .font(.largeTitle)
        .fontWeight(.bold)
        .multilineTextAlignment(.center)
        .padding(EdgeInsets(top: 0, leading: 40, bottom: 40, trailing: 40))
    
    // Item
    HStack(alignment: .center) {
        Image(systemName: "moon.stars.fill")
            .font(.system(size: 36))
            .foregroundColor(.blue)
            .frame(width: 60)
        VStack(alignment: .leading){
            Text("Choose your side").font(.subheadline).fontWeight(.semibold)
            Text("Switch between the Light and Dark side by turning on Dark Mode.").font(.subheadline).fontWeight(.regular).foregroundColor(.gray)
        }
    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 20, trailing: 40))
    
    // Item
    HStack(alignment: .center) {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 36))
            .foregroundColor(.yellow)
            .frame(width: 60)
        VStack(alignment: .leading){
            Text("Find your Favorite").font(.subheadline).fontWeight(.semibold)
            Text("Explore all the planets and see which one you like the most.").font(.subheadline).fontWeight(.regular).foregroundColor(.gray)
        }
    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 20, trailing: 40))
    
    // Item
    HStack(alignment: .center) {
        Image(systemName: "hand.thumbsup.fill")
            .font(.system(size: 36))
            .foregroundColor(.purple)
            .frame(width: 60)
        VStack(alignment: .leading){
            Text("Most importantly, Enjoy!").font(.subheadline).fontWeight(.semibold)
            Text("Discover every planet and keep in mind, May the Force be with You.").font(.subheadline).fontWeight(.regular).foregroundColor(.gray)
        }
    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
        
    Spacer()

    // Button to hide the modal sheet
    Button(action: {
        // Hide the sheet
        self.presentationMode.wrappedValue.dismiss()
    }) {
        Text("Explore the Galaxy!")
            .font(.headline)
            .fontWeight(.semibold)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color("secondaryButtonColor"))
            .cornerRadius(13)
    }.padding(40)
    
    Spacer()
        .frame(height: 60.0)
}
```

In the `OnboardingView()` I defined a variable for the modal sheet:

```swift
@State var showingSheet = true
```

Later on in the `OnboardingView()` I used:

```swift
.sheet(isPresented: $showingSheet)
```

at the end of my `VStack` to tell the sheet it is `true` and should bring up the `ModalView()`.

Within the `ModalView()` there are two ways of dismissing it. The native way is by just *dragging* it down. I decided to also add a button to increase usabilty:

```swift
// Button to hide the modal sheet
Button(action: {
    // Hide the sheet
    self.presentationMode.wrappedValue.dismiss()
}) {
    Text("Explore the Galaxy!")
        .font(.headline)
        .fontWeight(.semibold)
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(Color("secondaryButtonColor"))
        .cornerRadius(13)
}.padding(40)
```

As you can see, it calls `dismiss()` function of the Environmental variable:

```swift
@Environment(\.presentationMode) var presentationMode
```

Now the modal is dismissed:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/modalview.gif)

### Sith & Jedi mode

For the next part of my application I really wanted to do something unique. After looking at Apple's documentation I quickly learned that it is very important to support dark mode in iOS 13. Luckily, I found out that it was pretty easy.

In SwiftUI, dark mode is standard to all the native elements you can use. However, I still needed to do a few things manually. As you saw in my design from week 7, I have a couple of things that differ for both modes:

* For light mode I am using a Jedi image and a blue tint color
* For dark mode I am using a Sith Lord image and a red tint color.

Of course, the background and text are also defined for each mode. But as I said those are things that are native to iOS 13 and SwiftUI and will change automatically without any manual work.

So, what did I do to get this to work? To start off I went into the `Assets.xcassets` folder and learned that you can define images, color sets and more for the different color schemes, light and dark:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/sith&jedimode1.png)
![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/sith&jedimode2.png)
![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/sith&jedimode3.png)

This helped a lot. 

In my code, all I then had to do was to call for the appropiate asset for each image:

```swift
Image("star-wars-logo")
    .resizable()
    .scaledToFit()
    .frame(height: 80)
    .padding(.bottom, 70)

Image("jedi")
    .resizable()
    .scaledToFit()
    .frame(height: 600)
```

As you can see, I called for the name of the asset, and it would then automatically pick the right one based on the mode the device is in. 

Now that I had images in place it was time to do the same for colors. Here's my button I used for the `OnboardingView()`:

```swift
Button(action: {
    withAnimation {
        self.clickedNavBtn = true
    }
}) {
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

As you can see I set the background color to `"standardColors"`, which is the color set that defines the blue and red color tints for light and dark. The only thing that doesn't adhere to "assets" is the text inside a Text block. In order to change that text based on the device appearance mode, I had to define a variable that stores the systemwide color scheme first:

```swift
@Environment (\.colorScheme) var colorScheme:ColorScheme
```

Using the value of this variable I was able to check the appearance mode and change the text of the button accordingly:

```swift
Button(action: {
    withAnimation {
        self.clickedNavBtn = true
    }
}) {
    if colorScheme == .light {
        NavigationLink(destination: PlanetsView()) {
            Text("Become a Jedi")
                // styling modifiers
        }

    } else {
        NavigationLink(destination: PlanetsView()) {
            Text("Turn to the Dark Side")
                // styling modifiers
        }
    }
    
}.padding(.horizontal, 40)
```
And as you can see below, the result is quite satisfying:

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/darklightmode.gif)

A last thing to add to this week is that I will navigate from `OnboardingView()` using `NavigationLink()` to the `PlanetsView()` on the click of that button. I will touch upon that in Week 9, [Application Development](https://github.com/mwdossantos/kb-86/blob/master/docs/week-9-application-development.md)

For now though, the result of this week:

**Light mode:**

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/week8light.gif)

**Dark mode:**

![img](https://raw.githubusercontent.com/mwdossantos/kb-86/master/docs/images/week8dark.gif)

## Resources

| Resource | Note |
| :--- | :--- |
| [Apple develop website](https://developer.apple.com/develop/) | Used to find tutorials and look up documentation when programming |
| [Stack Overflow](https://stackoverflow.com/) | Who doesn't use this website? |
|[SDWebImageSwiftUI](https://github.com/SDWebImage/SDWebImageSwiftUI)|SDWebImageSwiftUI is a SwiftUI image loading framework, which based on SDWebImage.|


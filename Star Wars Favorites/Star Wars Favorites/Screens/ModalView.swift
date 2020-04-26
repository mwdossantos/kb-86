//
//  ModalView.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack (alignment: .center) {

            Spacer()
            
            // Title
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
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

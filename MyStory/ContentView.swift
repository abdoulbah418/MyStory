//
//  ContentView.swift
//  MyStory
//
//  Created by Abdoul Bah on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAboutMe = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    Button(action: {
                       showAboutMe.toggle()
                   }) {
                       Text("Abdoul Bah")
                           .font(.system(size: 25))
                           .foregroundColor(.black)
                           .font(.body)
                           .bold()
                           .padding(.top, 50)
                   }
                   .popover(isPresented: $showAboutMe) {
                       VStack {
                           Text("Howard Intro")
                               .font(.system(size: 20))
                               .bold()
                               .padding(.bottom, 10)
                           Text("Abdoul Bah is a graduating senior Computer Science major at the Illustrious Howard Univeristy. He was born and mainly raised in NYC, but his family hails from Guinea in West Africa.")
                               .font(.body)
                               .multilineTextAlignment(.center)
                               .padding(.horizontal)
                               .padding(.bottom, 20)
                           Button(action: {
                               showAboutMe.toggle()
                           }) {
                               Text("Close")
                                   .font(.headline)
                                   .foregroundColor(.white)
                                   .padding(.horizontal, 20)
                                   .padding(.vertical, 10)
                                   .background(Color.brown)
                           }
                       }
                       .padding()
                   }
                    Image("Headshot")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225, height: 225)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    VStack {
                        NavigationLink(destination: BackstoryView()) {
                            Text("My Cool Backstory")
                                .font(.headline)
                               .foregroundColor(.white)
                               .frame(maxWidth: .infinity)
                               .padding()
                               .background(Color.brown)
                               .frame(width: 200, height: 50)
                        }
                        NavigationLink(destination: GoalsView()) {
                            Text("Goals for 2023")
                                .font(.headline)
                               .foregroundColor(.brown)
                               .frame(maxWidth: .infinity)
                               .padding(15)
                               .background(Color.white)
                               .border(Color.brown, width: 2)
                               .frame(width: 200, height: 50)

                        }
                        NavigationLink(destination: FavoriteMealView()) {
                            Text("My Favorite Meal")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.brown)
                                .frame(width: 200, height: 50)
                        }
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .padding(.bottom, 20)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackstoryView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("My Cool Back Story")
                    .font(.body)
                    .bold()
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                Image("AfricaPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 225, maxHeight: 225)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                Text("When I was 8 months old, my parents were still new to America and still in school, trying to create a new life for themselves. As a result of school and work, they were not able to take care of me the way they wanted and so they sent me to Guinea to live with their families. I stayed in Guinea for about 5 years and came back to America at the age of 6, speaking Pular (my tribes language) and French. Two languages I still speak to this day.")
                    .font(.body)
                    .padding(30)
            }
        }
    }
}

struct GoalsView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("Goals for 2023")
                    .font(.body)
                    .bold()
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                Image("GraduatingPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 225, maxHeight: 225)
                    .padding(.horizontal)
                Text("As you can probably see from my picture, my biggest goal might have to do with a cap and gown. Here they are below!")
                    .font(.body)
                    .padding(30)
                Text("1. Graduate 2. Graduate! 3. Graduate!! 4. Get back in shape 5. Pay of Student Loans by New Years")
                    .font(.body)
            }
        }
    }
}

struct FavoriteMealView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("My Favorite Meal")
                    .font(.body)
                    .bold()
                    .padding(.top, 20)
                Image("FavoriteMeal")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                    .padding(20)
                Text("Anyone who knows me, knows I am addicted to Shah's Halal Food. It is a cleaner and healthier version of NYC styled Chicken over Rice from the Halal Carts. For the last 4 years I have spent over $5000 on Chicken/Fish over Rice Platters at Shah's and i will continue to do so. ")
                    .font(.body)
                    .padding(30)
                Spacer()
            }
        }
    }
}

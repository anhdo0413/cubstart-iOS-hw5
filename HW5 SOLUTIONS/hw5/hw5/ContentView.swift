//
//  ContentView.swift
//  hw5
//
//  Created by Enya Do on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSpawn = false
    @State private var showingOmnon = false
    @State private var showingToy = false
    @State private var showingHooman = false
    
    var body: some View {
        VStack {
            Text("All About")
                .padding(.top, 20)

            Text("~" + "Pumpkin" + "~")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.orange)

            Image("cat")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom, 20)
        }
        
        Spacer()
                
        Form {
            Button("Bu"){
                showingSpawn.toggle()
            }
                .padding()
                .foregroundColor(.black)
                .sheet(isPresented: $showingSpawn) {
                    SpawnView() }


            Button("onnom"){
                showingOmnon.toggle()
            }
                .padding()
                .foregroundColor(.black)
                .sheet(isPresented: $showingOmnon) {
                    OmnomView() }

            Button("Numba 1 Toy"){
                showingToy.toggle()
            }
                .padding()
                .foregroundColor(.black)
                .sheet(isPresented: $showingToy) {
                    ToyView() }

            Button("Da Best Hooman"){
                showingHooman.toggle()
            }
                .padding()
                .foregroundColor(.black)
                .sheet(isPresented: $showingHooman) {
                    HoomanView() }
        }

    }
}

struct AboutView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                Button("Back") {
                    dismiss()
                }
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(10)
                
                Spacer()
            }
            .padding(.leading, 20)
            
            Text("Spawn Point")
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom, 5)

            Text("Craigslist Free Listing")
                .bold()

            Text("Random couple moving to Texas needed to get rid of cat ASAP.")
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .multilineTextAlignment(.center)

            Text("First Date on Earth")
                .padding(.top, 5)
                .bold()

            Text("06/28/2021")
            
            Text("Star Sign")
                .padding(.top, 5)
                .bold()

            Text("Cancer")

            Spacer()
        }
        .padding(.top, 20)
    }
}

struct OmnomView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                Button("Back") {
                    dismiss()
                }
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(10)
                
                Spacer()
            }
            .padding(.leading, 20)
            
            Text("Fav Food")
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom, 5)

            Text("Rotiserrie Chicken")
            
            Text("Fav Snack")
                .padding(.top, 5)
                .bold()

            Text("DA ZAAA (catnip ya feel me)")

            Spacer()
        }
        .padding(.top, 20)
    }
}

struct ToyView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                Button("Back") {
                    dismiss()
                }
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(10)
                
                Spacer()
            }
            .padding(.leading, 20)
            
            Text("Fav Toy")
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom, 5)

            Text("fedah")

            Spacer()
        }
        .padding(.top, 20)
    }
}

struct HoomanView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                Button("Back") {
                    dismiss()
                }
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(10)
                
                Spacer()
            }
            .padding(.leading, 20)
            
            Text("Fav Hooman")
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom, 5)

            Text("Enya Do")
                .bold()
            
            Text("(real, unbaised, unequivocal, reviewed by third-party, raw, truth)")
                .multilineTextAlignment(.center)
                .padding(.leading, 30)
                .padding(.trailing, 30)

            Spacer()
        }
        .padding(.top, 20)
    }
}


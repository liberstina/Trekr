//
//  ContentView.swift
//  Trekr
//
//  Created by Marina on 24.02.2021.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
        
            Text(location.name)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .font(.callout)
                .padding(.horizontal)
            
            Text("Did you know")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .font(.callout)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: Location.example)
        }
    }
}

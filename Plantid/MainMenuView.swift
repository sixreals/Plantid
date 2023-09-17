//
//  MainMenuView.swift
//  Plantid
//
//  Created by Ryan Walton on 7/5/2023.
//

import SwiftUI

struct PlantDatabase: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Search", destination :  ContentView()).environment(\.managedObjectContext, viewContext)
                NavigationLink("New Entry", destination :  ContentView()).environment(\.managedObjectContext, viewContext)
                NavigationLink("Browse by Category", destination :  ContentView()).environment(\.managedObjectContext, viewContext)
                NavigationLink("Browse All", destination :  ContentView()).environment(\.managedObjectContext, viewContext)
                NavigationLink("ID Helper", destination :  ContentView()).environment(\.managedObjectContext, viewContext)
            }.navigationTitle("Main Menu")
        }
    }
}

struct MainMenuView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "person.crop.circle")
                }
            PlantDatabase()
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
            NewView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainMenuView()
    }
}

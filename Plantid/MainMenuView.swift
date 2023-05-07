//
//  MainMenuView.swift
//  Plantid
//
//  Created by Ryan Walton on 7/5/2023.
//

import SwiftUI


struct MainMenuView: View {
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

struct MainMenuView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainMenuView()
    }
}

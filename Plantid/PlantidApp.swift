//
//  PlantidApp.swift
//  Plantid
//
//  Created by Ryan Walton on 7/5/2023.
//

import SwiftUI

@main
struct PlantidApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

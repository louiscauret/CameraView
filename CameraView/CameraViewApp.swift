//
//  CameraViewApp.swift
//  CameraView
//
//  Created by Louis Cauret on 06/04/2022.
//

import SwiftUI

@main
struct CameraViewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

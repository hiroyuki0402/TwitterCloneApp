//
//  TwitterCloneAppApp.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/02.
//

import SwiftUI

@main
struct TwitterCloneAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainTab()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

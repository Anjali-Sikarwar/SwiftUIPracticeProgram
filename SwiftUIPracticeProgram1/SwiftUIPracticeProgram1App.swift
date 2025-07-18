//
//  SwiftUIPracticeProgram1App.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 21/03/24.
//

import SwiftUI

@main
struct SwiftUIPracticeProgram1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
            ListSwiftUI()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

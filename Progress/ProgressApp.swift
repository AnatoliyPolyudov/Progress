//
//  ProgressApp.swift
//  Progress
//
//  Created by Анатолий on 05.07.2021.
//

import SwiftUI

@main
struct ProgressApp: App {
    
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}

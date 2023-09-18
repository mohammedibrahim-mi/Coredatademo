//
//  CoredatademoApp.swift
//  Coredatademo
//
//  Created by Mohammed Ibrahim on 18/09/23.
//

import SwiftUI

@main
struct CoredatademoApp: App {
   
    @StateObject private var controller = LoginDataController()
  
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment (\.managedObjectContext, controller.container.viewContext)
        }
    }
}

//
//  Quzlet_ishApp.swift
//  Quzlet-ish
//
//  Created by Vasilisa Ponomarenko on 11/12/22.
//

import SwiftUI
import Firebase

@main
struct Quzlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
        AuthenticationService.signIn()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//
//  R_ImpactApp.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/10/23.
//

import SwiftUI
import Firebase

@main
struct R_ImpactApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            startingPage()
        }
    }
}

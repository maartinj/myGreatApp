//
//  My_Great_AppApp.swift
//  My Great App
//
//  Created by Stewart Lynch on 2021-09-21.
//

import SwiftUI
import Firebase
import FBAuthentication

@main
struct My_Great_AppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserInfo())
        }
    }
}

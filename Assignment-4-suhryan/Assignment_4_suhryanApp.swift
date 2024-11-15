//
//  Assignment_4_suhryanApp.swift
//  Assignment-4-suhryan
//
//  Created by ryan suh on 11/14/24.
//

import SwiftUI
import FirebaseCore

// Initialize Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct Assignment_4_suhryanApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

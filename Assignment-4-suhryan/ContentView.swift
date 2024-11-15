//
//  ContentView.swift
//  Assignment-4-suhryan
//
//  Created by ryan suh on 11/14/24.
//

import SwiftUI

// coordinate views
struct ContentView: View {
    @StateObject private var authViewModel = AuthViewModel()

    var body: some View {
        if authViewModel.isSignedIn {
            HomeView()
                .environmentObject(authViewModel)
        } else {
            LoginView()
                .environmentObject(authViewModel)
        }
    }
}

#Preview {
    ContentView()
}

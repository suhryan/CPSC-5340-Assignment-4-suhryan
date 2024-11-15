//
//  ContentView.swift
//  Assignment-4-suhryan
//
//  Created by ryan suh on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authViewModel = AuthViewModel()

    var body: some View {
        if authViewModel.isSignedIn {
            //display a view with success login message
        } else {
            LoginView()
                .environmentObject(authViewModel)
        }
    }
}

#Preview {
    ContentView()
}

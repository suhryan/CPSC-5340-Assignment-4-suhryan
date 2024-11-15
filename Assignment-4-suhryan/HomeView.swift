//
//  HomeView.swift
//  Assignment-4-suhryan
//
//  Created by ryan suh on 11/14/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        VStack {
            Text("You are logged in")
                .font(.title)
                .padding()
            Button("Logout") {
                authViewModel.logout()
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}

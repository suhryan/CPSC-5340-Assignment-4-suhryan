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
            Text("Authenticate")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            VStack {
                Text("You are logged in")
                    .font(.title)
                    .padding()
                Button("Logout") {
                    authViewModel.logout()
                }
                .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}

//
//  AuthViewModel.swift
//  Assignment-4-suhryan
//
//  Created by ryan suh on 11/14/24.
//

import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var isSignedIn = false
    @Published var errorMessage: String?

    init() {
        isSignedIn = Auth.auth().currentUser != nil
    }

    //Use Firebase Authentication to log in with email and password
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            DispatchQueue.main.async {
                if let error = error {
                    self?.errorMessage = error.localizedDescription
                } else {
                    self?.isSignedIn = true
                }
            }
        }
    }

    //Creates a new user using Firebase Authentication
    func signup(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            DispatchQueue.main.async {
                if let error = error {
                    self?.errorMessage = error.localizedDescription
                } else {
                    self?.isSignedIn = true
                }
            }
        }
    }
    
    //Log out the user using Firebase Authentication
    func logout() {
        do {
            try Auth.auth().signOut()
            DispatchQueue.main.async {
                self.isSignedIn = false
            }
        } catch let error {
            print("Error signing out: \(error.localizedDescription)")
        }
    }
}

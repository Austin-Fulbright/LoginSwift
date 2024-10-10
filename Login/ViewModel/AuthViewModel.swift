import Combine
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var isAuthenticated = false
    @Published var showError = false
    @Published var errorMessage = ""
    
    func register() {
        // Perform registration validation here
        if password != confirmPassword {
            errorMessage = "Passwords do not match"
            showError = true
            return
        }
        
        // For now, we'll mock registration success
        isAuthenticated = true
    }
    
    func login() {
        // Perform login validation
        if email.isEmpty || password.isEmpty {
            errorMessage = "Email or Password cannot be empty"
            showError = true
            return
        }

        // Mock login success
        isAuthenticated = true
    }
}

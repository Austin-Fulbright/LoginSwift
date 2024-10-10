import SwiftUI

struct SignupView: View {
    @ObservedObject var authVM: AuthViewModel

    var body: some View {
        VStack(spacing: 20) {
            TextField("First Name", text: $authVM.firstName)
                .themedTextField()

            TextField("Last Name", text: $authVM.lastName)
                .themedTextField()

            TextField("Email", text: $authVM.email)
                .themedTextField()
                .disableAutocorrection(true)
                .autocapitalization(.none)

            SecureField("Password", text: $authVM.password)
                .themedTextField()

            SecureField("Confirm Password", text: $authVM.confirmPassword)
                .themedTextField()

            Button(action: {
                authVM.register()
            }) {
                Text("CREATE ACCOUNT")
                    .themedButton()
            }
            .alert(isPresented: $authVM.showError) {
                Alert(title: Text("Error"), message: Text(authVM.errorMessage), dismissButton: .default(Text("OK")))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
        )
        .edgesIgnoringSafeArea(.all)
    }
}

import SwiftUI

struct LoginView: View {
    @ObservedObject var authVM: AuthViewModel

    var body: some View {
        VStack(spacing: 20) {
            TextField("Email", text: $authVM.email)
                .themedTextField()
                .disableAutocorrection(true)
                .autocapitalization(.none)

            SecureField("Password", text: $authVM.password)
                .themedTextField()

            Button(action: {
                authVM.login()
            }) {
                Text("LOG IN")
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

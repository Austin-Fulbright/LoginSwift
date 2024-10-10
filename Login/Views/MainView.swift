import SwiftUI

struct MainView: View {
    @ObservedObject var authVM = AuthViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: LoginView(authVM: authVM)) {
                    Text("LOG IN")
                        .themedButton()
                }

                NavigationLink(destination: SignupView(authVM: authVM)) {
                    Text("SIGN UP")
                        .themedButton()
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)  // Ensures background fills the screen
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
            )
            .edgesIgnoringSafeArea(.all)
        }
        .fullScreenCover(isPresented: $authVM.isAuthenticated) {
            MapView()
        }
    }
}

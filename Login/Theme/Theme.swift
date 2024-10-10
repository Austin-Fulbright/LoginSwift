//
//  Theme.swift
//  Login
//
//  Created by Austin Fulbright on 10/10/24.
//
import Foundation
import SwiftUI

struct Theme {
    static let buttonStyle = ButtonStyle()
    static let textFieldStyle = TextFieldStyle()
}

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .bold)) // Larger text size and bold weight
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.9)) // Darker shade of blue
            .cornerRadius(10)
    }
}



struct TextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.white)
            .cornerRadius(10)
    }
}

extension View {
    func themedButton() -> some View {
        self.modifier(Theme.buttonStyle)
    }

    func themedTextField() -> some View {
        self.modifier(Theme.textFieldStyle)
    }
}

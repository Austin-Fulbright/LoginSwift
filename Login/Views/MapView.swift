//
//  MapView.swift
//  Login
//
//  Created by Austin Fulbright on 10/10/24.
//
import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),  // San Francisco coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .ignoresSafeArea()  // Ensure the map fills the screen
    }
}

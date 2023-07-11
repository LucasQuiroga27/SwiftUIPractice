//
//  MapView.swift
//  SwiftUIPractice
//
//  Created by Lucas Quiroga on 10/07/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -12.141948, longitude: -77.022770),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta:0.2 )
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

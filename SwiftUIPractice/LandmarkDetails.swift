//
//  LandmarkDetails.swift
//  SwiftUIPractice
//
//  Created by Lucas Quiroga on 12/07/23.
//

import SwiftUI

struct LandmarkDetails: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Divider()
                Text("acerca de: \(landmark.name)")
                    .font(.title2)
                    .padding(.bottom, 3)
                Text(landmark.description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[1])
    }
}

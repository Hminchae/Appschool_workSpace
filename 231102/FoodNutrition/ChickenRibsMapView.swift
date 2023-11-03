//
//  ChickenRibsMapView.swift
//  FoodNutrition
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI
import MapKit

struct TempContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("닭갈비 맛집")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                
                Divider()
                
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            
            Spacer()
        }
    }
}





struct CircleImage: View {
    var body: some View {
        Image("1_1")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 1)
            }
            .shadow(radius: 7)
    }
}


struct MapView: View {
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


#Preview {
    TempContentView()
}

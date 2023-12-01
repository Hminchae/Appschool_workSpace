//
//  ContentView.swift
//  PractceWeatherAPI
//
//  Created by 황민채 on 11/30/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var network = WeatherNetworkManager.shared
    var body: some View {
        VStack {
            Text(network.info.description)
        }
        .onAppear() {
            network.fetchdata()
        }
    }
}

#Preview {
    ContentView()
}

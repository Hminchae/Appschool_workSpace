//
//  practice2.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

struct practice2: View {
    @State private var icup = "square.and.arrow.up"
    @State private var icdn = "square.and.arrow.down"
    var body: some View {
        Image(systemName: icup)
            .font(.system(size: 200))
            .aspectRatio(contentMode: .fit)
        Spacer()
        HStack() {
            Spacer()
            Button("up") {
                if icup.hasSuffix("down") { (icup, icdn) = (icdn, icup)}
            }
                    .custumbuttonmodifier()
            Spacer()
            Button("down") {
                if icup.hasSuffix("up") { (icup, icdn) = (icdn, icup)}
            }
                    .custumbuttonmodifier()
            Spacer()
        }
        Spacer()
        Image(systemName: icdn)
            .font(.system(size: 200))
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    practice2()
}

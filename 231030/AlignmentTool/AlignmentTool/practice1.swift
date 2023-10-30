//
//  practice1.swift
//  AlignmentTool
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

extension Image {
    func custummodifier() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:130)
            .clipShape(Circle())
    }
}

extension Button {
    func custumbuttonmodifier() -> some View {
        self
            .frame(width: 80,height: 40)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))                        .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct practice1: View {
    var body: some View {
        VStack {
            HStack{
                Image(.sunsim)
                    .custummodifier()
            }
            HStack{
                Image(.sunsim)
                    .custummodifier()
                Image(.sunsim)
                    .custummodifier()
                Image(.sunsim)
                    .custummodifier()
            }
            HStack{
                Image(.sunsim)
                    .custummodifier()
                Image(.sunsim)
                    .custummodifier()
                Image(.sunsim)
                    .custummodifier()
            }
            Spacer()
            HStack{
                Button("button") {}
                        .custumbuttonmodifier()
                Spacer()
                Button("button") {}
                        .custumbuttonmodifier()
                Spacer()
                Button("button") {}
                        .custumbuttonmodifier()
            }
        }
    }
}

#Preview {
    practice1()
}

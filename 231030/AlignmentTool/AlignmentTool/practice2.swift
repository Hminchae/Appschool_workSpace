//
//  practice2.swift
//  AlignmentTool
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

struct practice2: View {
    var body: some View {
        Image(systemName: "square.and.arrow.down")
            .font(.system(size: 200))
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("up")
                    .padding(4)
                    .frame(width: 80,height: 40)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))                        .buttonStyle(.borderedProminent)
                    .foregroundColor(.white)
                    .cornerRadius(3)
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("down")
                    .padding(4)
                    .frame(width: 80,height: 40)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))                        .buttonStyle(.borderedProminent)
                    .foregroundColor(.white)
                    .cornerRadius(3)
            })
        }
        Image(systemName: "square.and.arrow.up")
            .font(.system(size: 200))

    }
}

#Preview {
    practice2()
}

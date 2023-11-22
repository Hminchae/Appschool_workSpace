//
//  SwiftUIView.swift
//  HostingControllerDemo
//
//  Created by 황민채 on 11/20/23.
//

import SwiftUI

struct SwiftUIView: View {
    var text: String
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            HStack {
                Image(systemName: "smiley")
                Text("This is a SwiftUI View")
            }
        }
        .font(.largeTitle)
    }
}

//#Preview {
//    SwiftUIView()
//}

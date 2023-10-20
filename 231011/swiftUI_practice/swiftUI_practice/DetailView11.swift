//
//  DetailView11.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/16.
//

import SwiftUI

struct DetailView11: View {
    
    @State private var count = 0
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                Color("a").ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("\(count)")
                    Spacer()
                    Button("COUNT") {
                        count += 1
                    }
                    .frame(width: geometry.size.width)
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.indigo)
                    .cornerRadius(5)
                }
            }
            
        }
    }
}
struct DetailView11_Previews: PreviewProvider {
    static var previews: some View {
        DetailView11()
    }
}

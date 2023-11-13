//
//  CalenderView.swift
//  LectureCode
//
//  Created by 황민채 on 11/9/23.
//

import SwiftUI

struct CalenderView: View {
    @State private var selection = 1
    
    var body: some View {
        ZStack {
            TabView {
                Text("2024")
                    .tabItem {
                        Image(systemName: "heart")
                    }
                January()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                February()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                March()                    
                    .tabItem {
                        Image(systemName: "heart")
                    }
                April()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                May()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                June()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                July()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                August()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                September()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                October()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                November()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                December()
                    .tabItem {
                        Image(systemName: "heart")
                    }
            }
            .font(.largeTitle)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        .background(.white)
    }
}

#Preview {
   CalenderView()
}

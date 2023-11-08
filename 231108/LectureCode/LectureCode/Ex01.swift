//
//  Ex01.swift
//  LectureCode
//
//  Created by 황민채 on 11/8/23.
//

//import SwiftUI
//
//struct MenuItem: Identifiable {
//    var id = UUID()
//    let name: String
//    let price: Double?
//    let subItems: [MenuItem]
//}
//
//let menuItems: [MenuItem] = [
//    
//    MenuItem(name: "양식", price: 50000, subItems: [
//        MenuItem(name: "burger", price: 30000, subItems: [
//            MenuItem(name: "bread", price: 200, subItems: []),
//            MenuItem(name: "beef", price: 20000, subItems: []),
//            MenuItem(name: "coke", price: 2000, subItems: [])])
//    ])
//
//]
//struct Ex01: View {
//    var body: some View {
//        List {
//            ForEach(menuItems) { menuItem in
//                Section(header: Text(menuItem.name)) {
//                    OutlineGroup(menuItem.subItems ?? [MenuItem](), children: \.subItems) { subItem in
//                        HStack {
//                            Image(systemName: subItem.image)
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 25, height: 25)
//                                .foregroundStyle(.pink)
//                            Text(subItem.name)
//                                .font(.system(.title3, design: .rounded)) // 조금 바뀜
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    Ex01()
//}

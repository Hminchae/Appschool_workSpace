//
//  Ex04.swift
//  ExNavigation
//
//  Created by 황민채 on 11/1/23.
//

import SwiftUI

struct Ex04: View {
    @State var data = "hello"
    var body: some View {
        NavigationStack {
            VStack {
                Text(data)
                NavigationLink(destination: SecondView04(data: $data), label: {Text("Go...")})
            }
        }
    }
}
struct SecondView04: View {
    @Binding var data: String
    @State var isEditing = false
    
    var body: some View {
        VStack {
            Spacer()
            TextField("여기에 입력", text: $data)
                .disabled( !isEditing )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(isEditing ? .black : .mint, width: 1)
            Spacer()
        }
        .background(.blue)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            Button(action: {
                isEditing.toggle()
            }, label: {
                Text(isEditing ? "Done" : "Edit")
            })
        }
        .padding()
    }
}
#Preview {
    Ex04()
}

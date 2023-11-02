//
//  Ex01.swift
//  ExNavigation
//
//  Created by 황민채 on 11/1/23.
//

import SwiftUI

struct Ex01: View {
    @State private var text: String = ""
    @State private var value: String = "여기를 누르면 두번째 화면으로 이동이 됨"

    var body: some View {
        NavigationStack {
            NavigationLink(value, value: "안뇽?")
                .navigationDestination(for: String.self) { value in
                    Text("앙뇽?")
                    HStack{
                        TextField("첫번째 뷰로 데이터를 다시 전달해봐", text: $text)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: btnpress,
                               label: {
                            Text("수정")
                        })
                        .buttonStyle(.bordered)
                        .tint(.blue)
                    }
                    .padding(10)
                }
        }
    }
    func btnpress(){
       value = "받은 값: " + text
    }
}

#Preview {
    Ex01()
}

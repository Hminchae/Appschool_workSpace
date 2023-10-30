//
//  FileA.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//
//데이터 객체로 인코딩/디코딩


import Foundation
import SwiftUI

struct UserName: Encodable, Decodable {
    var firstName: String
    var lastName: String
}
/*
 AppStorage와 sceneStorage 프로퍼티 래퍼는 특정 타입의 값만 저장한다
 - Bool, Int, Double, String, Url, Data Type
 - 이 외에 다른 타입을 저장하려면 Data 객체로 인코딩/디코딩이 필요하다
 - 인코딩/디코딩을 위해 Encodable, Decodable 프로토콜 준수
 - JSONDecoder(), JSONDIncoder() 이용
 */

/*
 아래 뷰가 생성되는 시점에 init() 실행
 */


struct FileA: View {
    @AppStorage("mytext") var editorText: String = "Sample"
    @AppStorage("username") var namestore: Data = Data()
    @State var username = UserName(firstName: "Hwang", lastName: "민채")
    var body: some View {
        VStack {
            HStack {
                TextField("firstname", text: $username.firstName )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear() {
                        let decoder = JSONDecoder()
                        if let name = try? decoder.decode(UserName.self, from: namestore) {
                            username = name
                        }
                    }
                TextField("lastname", text: $username.firstName )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            Button("username save") {
                let encorder = JSONEncoder()
                
                if let data = try? encorder.encode(username) {
                    namestore = data
                    editorText = data.base64EncodedString()
                }
            }
            TextEditor(text: $editorText )
                .padding(30)
                .font(.largeTitle)
        }
    }
}
#Preview {
    FileA()
}

//
//  SecondTabView.swift
//  lifeCycleDemo
//
//  Created by 황민채 on 10/26/23.
//
/*
 onChange() 수정자
 
 앱 내에서 상태가 변경될 때마다 실행
 - TextEditor 뷰의 경우 키를 입력할 때마다 이벤트가 실행
 - ScenePhase 환경 프로퍼티와 함께 사용할 때 유용
 */
import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""
    var body: some View {
        TextEditor(text:  $text)
            .padding()
            .onChange(of: text){ value in
                print("onChange triggered", value)
            } //앱 내에서 상태가 변경될때마다
    }
}

#Preview {
    SecondTabView()
}

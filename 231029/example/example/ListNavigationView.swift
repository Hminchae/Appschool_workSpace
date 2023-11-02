//
//  ListNavigationView.swift
//  example
//
//  Created by 황민채 on 10/31/23.
//

import SwiftUI

/*
 MARK: 동적 리스트
 - 리스트에 표시할 데이터는 Identifiable 프로토콜을 따라야 함
 - id 프로퍼티 필수: 각 항목을 고유하게 식별하는데 사용
 - Hashalbe 프로토콜을 따르는 모든 스위프트 타입이나 커스텀 타입이 가능
 - UUID() 메서드는 각 항목마다 고유한 ID를 자동으로 생성하는데에 사용
 */

struct ToDoItem : Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}
struct ListNavigationView: View {
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Take out the trash", imageName: "trash.circle.fill"),
        ToDoItem(task:"Pick up kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
    ]
    @State private var toggleStatus = true
    
    var body: some View {
        //가장 단순한 형태의 List 표현
        //하나 이상 뷰의 각 행을 수직 방향의 목록으로 정보를 표현
        //300p
        List {
            Text("Wash the car")
                .listRowSeparator(.hidden) // -> 구분선 숨김
            Text("Vaccum house")
            Text("Pick up kids from school bus @ 3pm")
                .listRowSeparatorTint(.red) // -> 구분선 색상 바꾸기
            Text("Action thr knife on eBay")
                .listRowSeparatorTint(.accentColor)
            Text("Order Pizza for dinner")
                .listRowBackground(Image("sunsim")) //배경을 사진으로 설정
        }
        NavigationStack {
            // 리스트 셀은 여러 컴포넌트를 조합하여 셀에 표시할 수 있다.
            List(listData) { item in
                NavigationLink(value: item.task) {
                    HStack {
                        Image(systemName: item.imageName)
                        Text(item.task)
                    }
                }
            }
            .navigationTitle("To Do List")
            .navigationDestination(for: String.self) {
                Text($0)
                    .font(.largeTitle)
            }
        }
        List {
            Section(header: Text("Setting")) {
                Toggle(isOn: $toggleStatus) {
                    Text("Allow Notifications")
                }
            }
            Section(header: Text("To Do Tasks")) {
                ForEach(listData) { item in
                    HStack {
                        Image(systemName: item.imageName)
                        Text(item.task)
                    }
                }
            }
        }
        .refreshable {
            listData = [
                ToDoItem(task: "Take out the trash", imageName: "trash.circle.fill"),
                ToDoItem(task:"Pick up kids", imageName: "person.2.fill"),
                ToDoItem(task: "Wash the car", imageName: "car.fill")
            ]
        }
    }
}

#Preview {
    ListNavigationView()
}

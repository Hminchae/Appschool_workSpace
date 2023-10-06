import UIKit
import SwiftUI
import PlaygroundSupport
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView(){
//            let view = UIView()
//            view.backgroundColor = .blue
//
//            let label = UILabel()
//            label.frame = CGRect(x: 150)
//        }
//    }
//}

struct ExampleView : View {
    @State private var rotation: Double = 0
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotation))
                .animation(.linear(duration: 0.5), value: rotation)
            Button(action: {
                rotation = (rotation < 360 ? rotation + 60 : 0)
            }, label:  { Image( , label: "Button" )}
        }
    }
}
//PlaygroundPage.current.liveView = MyViewController()
PlaygroundPage.current.setLiveView(ExampleView().padding(100))

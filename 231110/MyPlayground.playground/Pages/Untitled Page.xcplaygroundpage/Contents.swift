//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
container.backgroundColor = UIColor.white

let square = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
container.backgroundColor = UIColor.blue


container.addSubview(square)

UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.red
    let rotation = CGAffineTransform(rotationAngle: 3.14)
    square.transform = rotation
})

PlaygroundPage.current.liveView = container

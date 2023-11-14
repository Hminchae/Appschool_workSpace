//
//  PracticeVisualLanguageViewController.swift
//  CrossViewDemo
//
//  Created by 황민채 on 11/14/23.
//

//MARK: 자동 레이아웃 시각적 형식 언어(Visual Format Language)
//- 시각적 형식 언어는 일련의 ASCII 문자를 사용하여 자동 레이아웃 제약 조건을 생성할 수 있는 구문을 정의
//- 시각적 형식 문자 시퀀스는 NSLayoutConstraint 클래스의 Constraints(withVisualFormat:)메서드를 통해 전달되어 제약 조건으로 변환
// ex) [button] - [textField] -> - 기본은 8
// ex)

import Foundation
import UIKit

class PracticeVisualLanguageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createVisualFormatLayout()
    }
    func createVisualFormatLayout() {
        let superview = self.view!

        let myLabel = UILabel()
        myLabel.text = "My Label"
        myLabel.translatesAutoresizingMaskIntoConstraints = false

        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.translatesAutoresizingMaskIntoConstraints = false

        superview.addSubview(myLabel)
        superview.addSubview(myButton)

        // 뷰 사전 생성
        let viewsDict = ["mylabel": myLabel, "myButton": myButton]

        var constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[myButton]-|", metrics: nil, views: viewsDict)

        superview.addConstraints(constraint)
    }
}

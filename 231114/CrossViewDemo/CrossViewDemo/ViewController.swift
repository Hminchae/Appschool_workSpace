//
//  ViewController.swift
//  CrossViewDemo
//
//  Created by 황민채 on 11/14/23.
//

//weak: 메모리 관리를 앱내에서 자동으로 해줌
//MARK: 교차 계층 구현 자동 레이아웃 제약

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!

    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var centerConstration: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //view8.removeConstraint(centerConstration) //기존 제약 조건을 제거
//        myLabel.trailingAnchor.constraint(equalTo: myButton.trailingAnchor).isActive = true
    }

}


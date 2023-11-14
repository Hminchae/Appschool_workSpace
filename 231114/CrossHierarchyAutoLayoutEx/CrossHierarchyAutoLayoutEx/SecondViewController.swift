//
//  SecondViewController.swift
//  CrossHierarchyAutoLayoutEx
//
//  Created by 황민채 on 11/14/23.
//

import Foundation
import UIKit


class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createVisualFormatLayout()
    }
    func createVisualFormatLayout() {
        let superview = self.view!
        
        let myView1: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = UIColor.red
            return view
        }()
        let myView2: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = UIColor.green
            return view
        }()
        
        superview.addSubview(myView1)
        superview.addSubview(myView2)
        
        // 뷰 사전 생성
        let viewsDict = ["myView1": myView1, "myView2": myView2]
        
        // 수직 제약 조건 생성 및 추가
        let const = NSLayoutConstraint.constraints(
            withVisualFormat: "[myView1(100)][myView2(200)]", metrics: nil, views: viewsDict)
        
        // 수평 제약 조건 생성 및 추가
//        let view1Andview2Const = NSLayoutConstraint.constraints(
//            withVisualFormat: "|-[myview1]-[myview2(==myview2)]-|",
//            options: NSLayoutConstraint.FormatOptions.alignAllLastBaseline,
//            metrics: nil, views: viewsDict)
        
        NSLayoutConstraint.activate(const)
    }
    
}

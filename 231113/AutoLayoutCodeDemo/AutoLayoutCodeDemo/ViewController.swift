//
//  ViewController.swift
//  AutoLayoutCodeDemo
//
//  Created by 황민채 on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        createLayout()
    }

    private func createLayout() {
        
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
        
        self.view.addSubview(myView1)
        self.view.addSubview(myView2)
        
        NSLayoutConstraint.activate([
            myView1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            myView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            myView1.trailingAnchor.constraint(equalTo: self.view.centerXAnchor),
            myView1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.333333, constant: 0),
            
            myView2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            myView2.leadingAnchor.constraint(equalTo: self.view.centerXAnchor),
            myView2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            myView2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.333333, constant: 0)
        ])
    }
}

#Preview {
    ViewController()
}


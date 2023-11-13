//
//  ViewController.swift
//  UIKitDemo
//
//  Created by 황민채 on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var getNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        getNameLabel.text = textField.text
    }
    
}


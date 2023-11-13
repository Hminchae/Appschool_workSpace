//
//  ViewController.swift
//  TempConvertDemo
//
//  Created by 황민채 on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel! // *연결 끊고 코드 삭제*
    @IBOutlet var tempText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertTemp(_ sender: Any) {
        guard let tempString = tempText.text else {
            return
        }
        if let fatreheit = Double(tempString) {
            let celsius = (fatreheit - 32 ) / 1.8
            let resultText = "celsius \(celsius)"
            resultLabel.text = resultText
        } else {
            resultLabel.text = "입력 오류 : 숫자만 입력"
        }
    }
    
}


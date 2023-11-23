//
//  ViewController.swift
//  UKCoreData
//
//  Created by 황민채 on 11/23/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var pw: UITextField!
    @IBOutlet weak var memberIn: UILabel!
    
    var manageObjectContext: NSManagedObjectContext?//관리 객체 컨텍스트 객체에 대한 참조를 저장할 변수를 선언
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initCoreData()
    }
    func initCoreData() {
        let container = NSPersistentContainer(name: "CoreDataDemo")
        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("initcoreData Error \(error)")
            } else {
                self.manageObjectContext = container.viewContext
            }
        })
    }
    
    @IBAction func MemberInButton(_ sender: Any) {
        if let context = self.manageObjectContext, let entityDescription = NSEntityDescription.entity(forEntityName: "Members", in: context) {
            
            let member = Members(entity: entityDescription, insertInto: manageObjectContext)
            
            member.id = id.text
            member.pw = pw.text
            
            do {
                try manageObjectContext?.save()
                
                id.text = ""
                pw.text = ""
                memberIn.text = "회원가입 성공"
            } catch let error {
                memberIn.text = error.localizedDescription
            }
        }
    }
    
}


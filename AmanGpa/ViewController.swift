//
//  ViewController.swift
//  AmanGpa
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstNameField: UITextField!
    
    @IBOutlet var lastNameField: UITextField!
    
    @IBOutlet var studentIdField: UITextField!
    var studDelegate : StudentTableViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func saveButton(_ sender: UIButton) {
        
        let alertCont = UIAlertController(title: "Are you Sure", message: nil, preferredStyle: .alert)
        let CancelAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        let OkAction = UIAlertAction(title: "Yes", style: .default){
            (action) in
            
            let firstname = self.firstNameField.text
            let lastname = self.lastNameField.text
            let StudID  = self.studentIdField.text
            
            
        let StuDent = students(FirstName: firstname! , LastName: lastname!,StudentId: StudID!)
            
              students.StudentSave.append(StuDent)
            
            
            let alert = UIAlertController(title: "New Contact Saved", message: "\(firstname!) is now a new Student", preferredStyle: .alert)
            
            let OkAction = UIAlertAction(title: "Ok", style: .cancel){
                (action) in
                
                self.firstNameField.text = ""
                self.lastNameField.text = ""
                self.studentIdField.text = ""
            }
            
            alert.addAction(OkAction)
            self.present(alert, animated: true ,completion: nil)
            
        }
        
        alertCont.addAction(CancelAction)
        alertCont.addAction(OkAction)
        self.present(alertCont, animated: true,completion: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        studDelegate?.tableView.reloadData()
    }
}


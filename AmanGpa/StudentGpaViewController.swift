//
//  StudentGpaViewController.swift
//  AmanGpa
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentGpaViewController: UIViewController {
    
    @IBOutlet var firstCourse: UITextField!
    
    
    @IBOutlet var secondCourse: UITextField!
    
    @IBOutlet var thirdCourse: UITextField!
    
    @IBOutlet var fourthCourse: UITextField!
    
    @IBOutlet var fifthCourse: UITextField!
    @IBOutlet var GPALabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Calculate(_ sender: UIButton) {
    
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

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
    
    var marks: Double?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Calculate(_ sender: UIButton) {
let CourseOne = GpaConvert(grades: Int(firstCourse.text!)!)
        
let CourseTwo = GpaConvert(grades: Int(secondCourse.text!)!)
        
let CourseThree = GpaConvert(grades: Int(thirdCourse.text!)!)
        
let CourseFour = GpaConvert(grades: Int(fourthCourse.text!)!)
        
let CourseFifth = GpaConvert(grades: Int(fifthCourse.text!)!)
        
let gpa = ((CourseOne * 4) + (CourseTwo * 3) + (CourseThree * 3) + (CourseFour * 5) +  (CourseFifth * 5)) / 20.0
      GPALabel.text = "GPA:\(gpa)/4"
        
       // if gpa > 2.8
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
func GpaConvert(grades: Int) ->
        Double {
    switch grades {
                
        case 0...49:
        marks = 0.0
        case 50...59:
        marks = 1.0
        case 60...62:
        marks = 1.7
        case 63...66:
        marks = 2.0
        case 67...69:
        marks = 2.3
        case 70...72:
        marks = 2.7
        case 73...76:
        marks = 3.0
        case 77...79:
        marks = 3.2
        case 80...86:
        marks = 3.5
        case 87...93:
        marks = 3.7
        case 94...100:
        marks = 4.0
    default:
        break
            }
            
        return marks!
    }

}

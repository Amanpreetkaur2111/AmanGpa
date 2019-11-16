//
//  StudentGpaViewController.swift
//  AmanGpa
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import AVFoundation

class StudentGpaViewController: UIViewController {
    
    @IBOutlet var Courses: [UITextField]!
    @IBOutlet var CourseLabel: [UILabel]!
    @IBOutlet var GPALabel: UILabel!
    var SemDelegate: semesterTableViewController?
    var audio: AVAudioPlayer!
    let sound = ["Win"]
    var a: Double?
    var marks: Double?
    var gpa = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
for item in CourseLabel.indices {
    CourseLabel[item].text = storeStudent.CourseArray[(SemDelegate!.semesterIndex)][item]
    }

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Calculate(_ sender: UIButton) {

    for i in Courses.indices{
    marks = GpaConvert(grades: Int(Courses[i].text!)!)
    students.StudentSave[SemDelegate!.stud_index].marks[SemDelegate!.semesterIndex][i] = Int(Courses[i].text!)!
       let creditScore = CourseLabel[i].text!
    gpa += (marks! * Double(String(creditScore[creditScore.index(before: creditScore.endIndex)]))!)
            
    }
        
  let SemGpa = gpa / 20.0
students.StudentSave[SemDelegate!.stud_index].gpa[SemDelegate!.semesterIndex] = SemGpa
               
    GPALabel.text = String(format:"GPA: %2f/4", SemGpa)
        
        if gpa > 2.8{
          
        let selectbutton = sound[sender.tag]
        let soundurl = Bundle.main.url(forResource: selectbutton, withExtension: "wav")
        audio = try! AVAudioPlayer(contentsOf: soundurl!)
        audio.play()
            
    }
        
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
       a = 0.0
       case 50...59:
       a = 1.0
       case 60...62:
       a = 1.7
       case 63...66:
       a = 2.0
       case 67...69:
       a = 2.3
       case 70...72:
       a = 2.7
       case 73...76:
      a = 3.0
       case 77...79:
       a = 3.2
       case 80...86:
       a = 3.5
       case 87...93:
       a = 3.7
       case 94...100:
       a = 4.0
    default:
        break
            }
     return a!
    }

}
